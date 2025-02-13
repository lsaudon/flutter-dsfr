from dataclasses import dataclass
from models import Color, Decision


@dataclass
class Association:
    decision_name: str
    color_name: str
    color_hex: str


@dataclass
class ExtractedData:
    colors: list[Color]
    decisions: list[Decision]


@dataclass
class ExtractedAssociation:
    light: list[Association]
    dark: list[Association]


def extract(json: dict) -> ExtractedData:
    colors = extract_colors(json)
    associations = extract_associations(json)
    fix_missing_associations(associations, colors)
    decisions = extract_decisions(associations, colors)

    return ExtractedData(
        colors=filter_unique_colors(colors),
        decisions=decisions
    )


def extract_colors(json: dict) -> list[Color]:
    light_colors = extract_light_colors(json)
    dark_colors = extract_dark_colors(json)
    return light_colors + dark_colors


def extract_light_colors(json: dict) -> list[Color]:
    light_options = json["color"]["light"]["decisions"]["options"]
    return extract_leaf_objects(light_options, create_color)


def extract_dark_colors(json: dict) -> list[Color]:
    dark_options = json["color"]["dark"]["options"]
    return extract_leaf_objects(dark_options, create_color)


def extract_associations(json: dict) -> ExtractedAssociation:
    light_decisions = json["color"]["light"]["decisions"]
    light_decisions["options"] = None
    dark_decisions = json["color"]["dark"]["decisions"]
    dark_decisions["options"] = None

    light_associations = extract_leaf_objects(
        light_decisions, create_association
    )
    dark_associations = extract_leaf_objects(
        dark_decisions, create_association
    )

    assert len(light_associations) == len(dark_associations)

    return ExtractedAssociation(light=light_associations, dark=dark_associations)


def extract_decisions(associations: ExtractedAssociation, colors: list[Color]) -> list[Decision]:
    light_dict = convert_to_dict(associations.light)
    dark_dict = convert_to_dict(associations.dark)
    return merge_associations(light_dict, dark_dict, colors)


def extract_leaf_objects(json_object: dict, create) -> list:
    leafs = []
    if isinstance(json_object, dict):
        for key, value in json_object.items():
            if isinstance(value, dict):
                if is_color_leaf(value):
                    leaf = create(key=key, json_object=value)
                    leafs.append(leaf)
                else:
                    leafs.extend(extract_leaf_objects(value, create))
    return leafs


def is_color_leaf(json_object: dict) -> bool:
    return json_object.get("type") == "color"


def create_color(key: str, json_object: dict) -> Color:
    return Color(
        name=dart_function_name(key),
        hex=dart_color(json_object["value"])
    )


def create_association(key: str, json_object: dict) -> Association:
    return Association(
        decision_name=dart_function_name(key),
        color_name=dart_function_name(json_object["description"]),
        color_hex=dart_color(json_object["value"])
    )


def convert_to_dict(associations: list[Association]) -> dict:
    return {association.decision_name: association.color_name for association in associations}


def merge_associations(light_dict: dict, dark_dict: dict, colors: list[Color]) -> list[Decision]:
    decisions = []
    for name in light_dict.keys():
        decisions.append(Decision(
            name=name,
            light_color_name=light_dict[name],
            dark_color_name=dark_dict[name]
        ))
    return decisions


def filter_unique_colors(colors: list[Color]) -> list[Color]:
    return list({color.name: color for color in colors}.values())


#
# Correction

def is_empty_name(name: str) -> bool:
    return name is None or name == ""


def fix_missing_associations(associations: ExtractedAssociation, colors: list[Color]):
    def fix(associations: list[Association], colors: list[Color]):
        for association in associations:
            if is_empty_name(association.color_name):
                color_name = find_color_name_by_hex(
                    colors,
                    association.color_hex
                )
                if is_empty_name(color_name):
                    # TODO: Créer la couleur manquante
                    # nom = nom de la décision + thème + "FixMissing"
                    pass
                else:
                    association.color_name = color_name
                    print(f"Fixed: {association}")

    fix(associations.light, colors)
    fix(associations.dark, colors)


def find_color_name_by_hex(colors: list[Color], hex: str) -> str:
    for color in colors:
        if color.hex == hex:
            return color.name
    return ""

#
# Sanitize


def dart_function_name(dsfr_color_name: str) -> str:
    name = dsfr_color_name.replace('$', '').replace('🔒', '')
    name = ''.join(
        word.capitalize()
        if i != 0 else word for i,
        word in enumerate(name.split('-'))
    )
    return name.strip()


def dart_color(dsfr_hex: str) -> str:
    hex = dsfr_hex.replace("#", "")
    alpha = hex[-2:]
    hex = hex[:-2]
    return f"Color(0x{alpha}{hex})"
