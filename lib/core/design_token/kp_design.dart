import 'package:flutter/material.dart';
import 'package:jitta_ranking/core/theme/theme.dart';

class KpDesign {
  static const Color primaryColor = Color(0xFFF5F7FA);
  static const Color secondaryColor = Color(0xFFCBD5E0);
  static const Color highlightColor = Color(0xFF3B82F6);
  static const Color alertColor = Color(0xFFF87171);
  static const Color successColor = Color(0xFF34D399);
  static const Color warningColor = Color(0xFFFBBF24);
  static const Color textColor = Color(0xFF1A202C);

  static TextStyle headline1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: highlightColor,
    fontFamily: fontFamily,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: textColor,
    fontFamily: fontFamily,
  );

  static TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textColor,
    fontFamily: fontFamily,
  );

  static TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: fontFamily,
  );

  static TextStyle priceStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: successColor,
    fontFamily: fontFamily,
  );

  static TextStyle percentageChangeStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: alertColor,
    fontFamily: fontFamily,
  );

  static const double spacingSmall = 8;
  static const double spacingMedium = 16;
  static const double spacingLarge = 32;

  static const BorderRadius cardBorderRadius =
      BorderRadius.all(Radius.circular(12));
  static const BorderRadius buttonBorderRadius =
      BorderRadius.all(Radius.circular(8));

  static const double cardElevation = 2;
  static const double buttonElevation = 4;

  static const List<BoxShadow> neonShadow = [
    BoxShadow(
      color: highlightColor,
      blurRadius: 16,
      spreadRadius: 1,
      offset: Offset(0, 4),
    ),
  ];

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Color(0xFFF5F7FA), Color(0xFFFFFFFF)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient buttonGradient = LinearGradient(
    colors: [highlightColor, successColor],
  );

  static const double iconSizeSmall = 16;
  static const double iconSizeMedium = 24;
  static const double iconSizeLarge = 32;

  static const Duration fastAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 400);
  static const Duration slowAnimation = Duration(milliseconds: 600);

  static const double iconSize = 48;
}
