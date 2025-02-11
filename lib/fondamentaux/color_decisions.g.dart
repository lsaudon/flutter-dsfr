import 'package:flutter/material.dart';
import 'package:flutter_dsfr/fondamentaux/colors.g.dart';

class DsfrColorDecisions {
  const DsfrColorDecisions._();

  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static Color backgroundAltGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975 : DsfrColors.grey75;
  }

  static Color backgroundAltBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975 : DsfrColors.blueFrance75;
  }

  static Color backgroundContrastGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey950 : DsfrColors.grey100;
  }

  static Color backgroundElevatedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey75;
  }

  static Color backgroundActionHighBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color backgroundActionLowBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925 : DsfrColors.blueFrance125;
  }

  static Color backgroundActiveBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color backgroundOpenBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925 : DsfrColors.blueFrance125;
  }

  static Color backgroundDisabledGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey925 : DsfrColors.grey125;
  }

  static Color backgroundFlatError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color backgroundFlatWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425 : DsfrColors.warning625;
  }

  static Color backgroundFlatSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color backgroundFlatInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425 : DsfrColors.info625;
  }

  static Color backgroundDefaultGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey50;
  }

  static Color textTitleGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textTitleBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textDefaultGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey200 : DsfrColors.grey850;
  }

  static Color textMentionGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey425 : DsfrColors.grey625;
  }

  static Color textLabelGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textActionHighBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textActionHighGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textInvertedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey50;
  }

  static Color textInvertedBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975 : DsfrColors.blueFrance113;
  }

  static Color textActiveBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textActiveGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textDisabledGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey625 : DsfrColors.grey425;
  }

  static Color textDefaultError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color textDefaultSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color artworkMajorBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color artworkMinorBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceMain525 : DsfrColors.blueFranceMain525;
  }
}
