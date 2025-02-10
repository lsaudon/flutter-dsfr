from dataclasses import dataclass
import requests
from bs4 import BeautifulSoup


# Constants

DESIGN_SYSTEM_URL = "https://www.systeme-de-design.gouv.fr"
PALETTE_PATH = "/fondamentaux/couleurs-palette"

NOMBRE_DE_IFRAME = 4
NOMBRE_DE_COULEURS = 293


# Dataclasses


@dataclass
class Couleur:
    nom: str
    normal_hex: str
    hover_hex: str
    active_hex: str


# HTTP Fetching


def fetch(url: str) -> str:
    response = requests.get(url)
    response.raise_for_status()
    return response.text


# Parsing


def parse_palette(html: str) -> list[Couleur]:
    soup = BeautifulSoup(html, "html.parser")
    iframes = soup.find_all("iframe")

    assert len(iframes) == NOMBRE_DE_IFRAME

    couleurs = []

    for iframe in iframes:
        src = iframe["src"]
        couleurs.extend(parse_iframe(src))

    return couleurs


def parse_hex_color_from_style(div):
    return div["style"].split("#")[1].strip()


def parse_iframe(path: str) -> list[Couleur]:
    html = fetch(DESIGN_SYSTEM_URL + path)
    soup = BeautifulSoup(html, "html.parser")

    box_samples = soup.find_all("div", class_="box-sample")

    couleurs = []

    for box_sample in box_samples:
        name = box_sample.select("p b")[0].get_text()
        normal = parse_hex_color_from_style(box_sample)

        color_states = box_sample.find_all(
            "div",
            class_="color-box-sample--sm"
        )

        hover = parse_hex_color_from_style(color_states[0])
        active = parse_hex_color_from_style(color_states[1])

        couleur = Couleur(name, normal, hover, active)
        couleurs.append(couleur)

    return couleurs


# Main


def main():
    palette_html = fetch(DESIGN_SYSTEM_URL + PALETTE_PATH)

    couleurs = parse_palette(palette_html)
    nb_couleurs = len(couleurs)
    assert nb_couleurs == NOMBRE_DE_COULEURS

    # TODO: generate dart file

    print(f"Fin. {nb_couleurs} couleurs importées.")


if __name__ == "__main__":
    main()
