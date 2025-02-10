from dataclasses import dataclass
import requests
from bs4 import BeautifulSoup
import os


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


def filter_unique(couleurs: list[Couleur]) -> list[Couleur]:
    return list({couleur.nom: couleur for couleur in couleurs}.values())


# Generation

def template_dart_file() -> str:
    return """
import 'package:flutter/material.dart';

class Couleurs {
  const Couleurs._();

  <%COULEURS%>
}
    """.strip()


def dart_constants(couleur: Couleur) -> str:
    camel_case_nom = ''.join(
        word.capitalize()
        if i != 0 else word for i,
        word in enumerate(couleur.nom.split('-'))
    )

    return f"""
    static const {camel_case_nom} = Color(0xFF{couleur.normal_hex});
    static const {camel_case_nom}Hover = Color(0xFF{couleur.hover_hex});
    static const {camel_case_nom}Active = Color(0xFF{couleur.active_hex});
    """


def generate_dart_colors(couleurs: list[Couleur]):
    couleurs_dart = [dart_constants(couleur) for couleur in couleurs]
    couleurs_dart_str = "".join(couleurs_dart)
    return template_dart_file().replace("<%COULEURS%>", couleurs_dart_str)


# File


def write_dart_file(dart: str):
    os.makedirs("./gen", exist_ok=True)
    with open("./gen/couleurs.dart", "w") as file:
        file.write(dart)


# Main


def main():
    palette_html = fetch(DESIGN_SYSTEM_URL + PALETTE_PATH)

    couleurs = parse_palette(palette_html)
    assert len(couleurs) == NOMBRE_DE_COULEURS

    couleurs = filter_unique(couleurs)

    dart = generate_dart_colors(couleurs)
    write_dart_file(dart)

    print(f"Fin. {len(couleurs)} couleurs importées.")


if __name__ == "__main__":
    main()
