import 'package:flutter/material.dart';
import 'package:flutter_dsfr/couleurs.dart';
import 'package:flutter_dsfr/typographies/typographies.dart';

// Dark/Light mode
// Kind primary secondary tertiary
// vérifier les couleurs, les gris, ...
// disabled
// focus
// icones (gauche, droite, seul)

class Boutons extends StatelessWidget {
  final Color textColor;
  final Color fillColor;
  final Color hoverColor;
  final Color splashColor;
  final Color highlightColor;
  final void Function() onPressed;

  const Boutons._({
    required this.onPressed,
    required this.textColor,
    required this.fillColor,
    required this.hoverColor,
    required this.splashColor,
    required this.highlightColor,
  });

  factory Boutons.primary({required void Function() onPressed}) {
    return Boutons._(
      textColor: Colors.white,
      fillColor: Couleurs.blueFranceSun113,
      hoverColor: Couleurs.blueFranceSun113Hover,
      splashColor: Couleurs.blueFranceSun113Active,
      highlightColor: Couleurs.blueFranceSun113Active,
      onPressed: onPressed,
    );
  }

  factory Boutons.secondary({required void Function() onPressed}) {
    return Boutons._(
      textColor: Couleurs.blueFranceSun113,
      fillColor: Colors.transparent,
      hoverColor: Couleurs.grey1000Hover,
      splashColor: Couleurs.grey1000Active,
      highlightColor: Couleurs.grey1000Active,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      fillColor: fillColor,
      hoverColor: hoverColor,
      splashColor: splashColor,
      highlightColor: highlightColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Text(
          'Bouton',
          style: TypographiesTextStyle.bodySmMedium(color: textColor),
        ),
      ),
    );
  }
}
