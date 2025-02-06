import 'package:flutter/material.dart';
import 'package:flutter_dsfr/couleurs.dart';
import 'package:flutter_dsfr/typographies/typographies.dart';

// Dark/Light mode
// Kind primary secondary tertiary
// disabled
// focus
// icones (gauche, droite, seul)

class Boutons extends StatelessWidget {
  final void Function() onPressed;

  const Boutons({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        color: Couleurs.blueFranceSun113,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Text(
            'Bouton',
            style: TypographiesTextStyle.bodySmMedium(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
