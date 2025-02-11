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

  static Color backgroundAltGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975Hover : DsfrColors.grey75Hover;
  }

  static Color backgroundAltGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey975Active : DsfrColors.grey75Active;
  }

  static Color backgroundAltBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975 : DsfrColors.blueFrance75;
  }

  static Color backgroundAltBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975Hover : DsfrColors.blueFrance75Hover;
  }

  static Color backgroundAltBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975Active : DsfrColors.blueFrance75Active;
  }

  static Color backgroundContrastGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey950 : DsfrColors.grey100;
  }

  static Color backgroundContrastGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey950Hover : DsfrColors.grey100Hover;
  }

  static Color backgroundContrastGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey950Active : DsfrColors.grey100Active;
  }

  static Color backgroundElevatedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey75;
  }

  static Color backgroundElevatedGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Hover : DsfrColors.grey75Hover;
  }

  static Color backgroundElevatedGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Active : DsfrColors.grey75Active;
  }

  static Color backgroundActionHighBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color backgroundActionHighBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Hover : DsfrColors.blueFrance625Hover;
  }

  static Color backgroundActionHighBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Active : DsfrColors.blueFrance625Active;
  }

  static Color backgroundActionLowBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925 : DsfrColors.blueFrance125;
  }

  static Color backgroundActionLowBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Hover : DsfrColors.blueFrance125Hover;
  }

  static Color backgroundActionLowBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Active : DsfrColors.blueFrance125Active;
  }

  static Color backgroundActiveBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color backgroundActiveBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Hover : DsfrColors.blueFrance625Hover;
  }

  static Color backgroundActiveBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Active : DsfrColors.blueFrance625Active;
  }

  static Color backgroundOpenBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925 : DsfrColors.blueFrance125;
  }

  static Color backgroundOpenBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Hover : DsfrColors.blueFrance125Hover;
  }

  static Color backgroundOpenBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance925Active : DsfrColors.blueFrance125Active;
  }

  static Color backgroundDisabledGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey925 : DsfrColors.grey125;
  }

  static Color backgroundDisabledGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey925Hover : DsfrColors.grey125Hover;
  }

  static Color backgroundDisabledGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey925Active : DsfrColors.grey125Active;
  }

  static Color backgroundFlatError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color backgroundFlatErrorHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425Hover : DsfrColors.error625Hover;
  }

  static Color backgroundFlatErrorActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425Active : DsfrColors.error625Active;
  }

  static Color backgroundFlatWarning(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425 : DsfrColors.warning625;
  }

  static Color backgroundFlatWarningHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425Hover : DsfrColors.warning625Hover;
  }

  static Color backgroundFlatWarningActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.warning425Active : DsfrColors.warning625Active;
  }

  static Color backgroundFlatSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color backgroundFlatSuccessHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425Hover : DsfrColors.success625Hover;
  }

  static Color backgroundFlatSuccessActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425Active : DsfrColors.success625Active;
  }

  static Color backgroundFlatInfo(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425 : DsfrColors.info625;
  }

  static Color backgroundFlatInfoHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425Hover : DsfrColors.info625Hover;
  }

  static Color backgroundFlatInfoActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.info425Active : DsfrColors.info625Active;
  }

  static Color backgroundDefaultGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey50;
  }

  static Color backgroundDefaultGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Hover : DsfrColors.grey50Hover;
  }

  static Color backgroundDefaultGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Active : DsfrColors.grey50Active;
  }

  static Color textTitleGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textTitleGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Hover : DsfrColors.grey1000Hover;
  }

  static Color textTitleGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Active : DsfrColors.grey1000Active;
  }

  static Color textTitleBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textTitleBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Hover : DsfrColors.blueFrance625Hover;
  }

  static Color textTitleBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Active : DsfrColors.blueFrance625Active;
  }

  static Color textDefaultGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey200 : DsfrColors.grey850;
  }

  static Color textDefaultGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey200Hover : DsfrColors.grey850Hover;
  }

  static Color textDefaultGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey200Active : DsfrColors.grey850Active;
  }

  static Color textMentionGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey425 : DsfrColors.grey625;
  }

  static Color textMentionGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey425Hover : DsfrColors.grey625Hover;
  }

  static Color textMentionGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey425Active : DsfrColors.grey625Active;
  }

  static Color textLabelGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textLabelGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Hover : DsfrColors.grey1000Hover;
  }

  static Color textLabelGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Active : DsfrColors.grey1000Active;
  }

  static Color textActionHighBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textActionHighBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Hover : DsfrColors.blueFrance625Hover;
  }

  static Color textActionHighBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Active : DsfrColors.blueFrance625Active;
  }

  static Color textActionHighGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textActionHighGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Hover : DsfrColors.grey1000Hover;
  }

  static Color textActionHighGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Active : DsfrColors.grey1000Active;
  }

  static Color textInvertedGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000 : DsfrColors.grey50;
  }

  static Color textInvertedGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Hover : DsfrColors.grey50Hover;
  }

  static Color textInvertedGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey1000Active : DsfrColors.grey50Active;
  }

  static Color textInvertedBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975 : DsfrColors.blueFrance113;
  }

  static Color textInvertedBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975Hover : DsfrColors.blueFrance113Hover;
  }

  static Color textInvertedBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFrance975Active : DsfrColors.blueFrance113Active;
  }

  static Color textActiveBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color textActiveBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Hover : DsfrColors.blueFrance625Hover;
  }

  static Color textActiveBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Active : DsfrColors.blueFrance625Active;
  }

  static Color textActiveGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50 : DsfrColors.grey1000;
  }

  static Color textActiveGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Hover : DsfrColors.grey1000Hover;
  }

  static Color textActiveGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey50Active : DsfrColors.grey1000Active;
  }

  static Color textDisabledGrey(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey625 : DsfrColors.grey425;
  }

  static Color textDisabledGreyHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey625Hover : DsfrColors.grey425Hover;
  }

  static Color textDisabledGreyActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.grey625Active : DsfrColors.grey425Active;
  }

  static Color textDefaultError(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425 : DsfrColors.error625;
  }

  static Color textDefaultErrorHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425Hover : DsfrColors.error625Hover;
  }

  static Color textDefaultErrorActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.error425Active : DsfrColors.error625Active;
  }

  static Color textDefaultSuccess(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425 : DsfrColors.success625;
  }

  static Color textDefaultSuccessHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425Hover : DsfrColors.success625Hover;
  }

  static Color textDefaultSuccessActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.success425Active : DsfrColors.success625Active;
  }

  static Color artworkMajorBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113 : DsfrColors.blueFrance625;
  }

  static Color artworkMajorBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Hover : DsfrColors.blueFrance625Hover;
  }

  static Color artworkMajorBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceSun113Active : DsfrColors.blueFrance625Active;
  }

  static Color artworkMinorBlueFrance(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceMain525 : DsfrColors.blueFranceMain525;
  }

  static Color artworkMinorBlueFranceHover(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceMain525Hover : DsfrColors.blueFranceMain525Hover;
  }

  static Color artworkMinorBlueFranceActive(BuildContext context) {
    return isLightMode(context) ? DsfrColors.blueFranceMain525Active : DsfrColors.blueFranceMain525Active;
  }
}
