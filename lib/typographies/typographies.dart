import 'package:flutter/material.dart';
import 'package:flutter_dsfr/couleurs.dart';

class TypographiesTextStyle extends TextStyle {
  const TypographiesTextStyle({
    required final double fontSize,
    super.fontWeight = FontWeight.normal,
    super.color = Couleurs.grey50,
    super.fontStyle = FontStyle.normal,
  }) : super(
          package: 'dsfr',
          fontFamily: 'Marianne',
          fontSize: fontSize,
          height: 1.4,
        );

  const TypographiesTextStyle.displayXl({final Color color = Couleurs.grey50})
      : this(fontSize: 72, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.displayLg({final Color color = Couleurs.grey50})
      : this(fontSize: 64, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.displayMd({final Color color = Couleurs.grey50})
      : this(fontSize: 56, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.displaySm({final Color color = Couleurs.grey50})
      : this(fontSize: 48, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.displayXs({final Color color = Couleurs.grey50})
      : this(fontSize: 40, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.headline1({final Color color = Couleurs.grey50})
      : this(fontSize: 32, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.headline2({final Color color = Couleurs.grey50})
      : this(fontSize: 28, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.headline3({final Color color = Couleurs.grey50})
      : this(fontSize: 24, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.headline4({final Color color = Couleurs.grey50})
      : this(fontSize: 22, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.headline5({final Color color = Couleurs.grey50})
      : this(fontSize: 20, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.headline6({final Color color = Couleurs.grey50})
      : this(fontSize: 18, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.bodyXl({final Color color = Couleurs.grey50}) : this(fontSize: 20, color: color);

  const TypographiesTextStyle.bodyXlMedium({final Color color = Couleurs.grey50})
      : this(fontSize: 20, fontWeight: FontWeight.w500, color: color);

  const TypographiesTextStyle.bodyXlBold({final Color color = Couleurs.grey50})
      : this(fontSize: 20, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.bodyLg({final Color color = Couleurs.grey50}) : this(fontSize: 18, color: color);

  const TypographiesTextStyle.bodyLgMedium({final Color color = Couleurs.grey50})
      : this(fontSize: 18, fontWeight: FontWeight.w500, color: color);

  const TypographiesTextStyle.bodyLgBold({final Color color = Couleurs.grey50})
      : this(fontSize: 18, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.bodyMd({final Color color = Couleurs.grey50}) : this(fontSize: 16, color: color);

  const TypographiesTextStyle.bodyMdMedium({final Color color = Couleurs.grey50})
      : this(fontSize: 16, fontWeight: FontWeight.w500, color: color);

  const TypographiesTextStyle.bodyMdBold({final Color color = Couleurs.grey50})
      : this(fontSize: 16, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.bodySm({final Color color = Couleurs.grey50}) : this(fontSize: 14, color: color);

  const TypographiesTextStyle.bodySmItalic({final Color color = Couleurs.grey50})
      : this(fontSize: 14, color: color, fontStyle: FontStyle.italic);

  const TypographiesTextStyle.bodySmMedium({final Color color = Couleurs.grey50})
      : this(fontSize: 14, fontWeight: FontWeight.w500, color: color);

  const TypographiesTextStyle.bodySmBold({final Color color = Couleurs.grey50})
      : this(fontSize: 14, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.bodyXs({final Color color = Couleurs.grey50}) : this(fontSize: 12, color: color);

  const TypographiesTextStyle.bodyXsMedium({final Color color = Couleurs.grey50})
      : this(fontSize: 12, fontWeight: FontWeight.w500, color: color);

  const TypographiesTextStyle.bodyXsBold({final Color color = Couleurs.grey50})
      : this(fontSize: 12, fontWeight: FontWeight.bold, color: color);

  const TypographiesTextStyle.fontFamily() : super(package: 'dsfr', fontFamily: 'Marianne');
}
