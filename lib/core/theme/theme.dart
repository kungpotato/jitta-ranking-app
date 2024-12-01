import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jitta_ranking/core/design_token/kp_design.dart';

final String? fontFamily =
    GoogleFonts.prompt(fontStyle: FontStyle.normal).fontFamily;

class KpTheme {
  static ThemeData get theme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: KpDesign.primaryColor,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: KpDesign.highlightColor,
          onPrimary: Colors.white,
          secondary: KpDesign.secondaryColor,
          onSecondary: Colors.white,
          surface: KpDesign.secondaryColor,
          onSurface: Colors.white,
          error: KpDesign.alertColor,
          onError: Colors.white,
          tertiary: KpDesign.successColor,
          outline: KpDesign.warningColor,
        ),
        scaffoldBackgroundColor: KpDesign.primaryColor,
        textTheme: TextTheme(
          displayLarge: KpDesign.headline1,
          displayMedium: KpDesign.headline2,
          bodyLarge: KpDesign.bodyText,
          labelLarge: KpDesign.buttonText,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: KpDesign.highlightColor,
          shape: RoundedRectangleBorder(
            borderRadius: KpDesign.buttonBorderRadius,
          ),
          textTheme: ButtonTextTheme.primary,
          padding: EdgeInsets.all(KpDesign.spacingMedium),
        ),
        cardTheme: const CardTheme(
          color: KpDesign.secondaryColor,
          elevation: KpDesign.cardElevation,
          shape: RoundedRectangleBorder(
            borderRadius: KpDesign.cardBorderRadius,
          ),
          margin: EdgeInsets.all(KpDesign.spacingMedium),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: KpDesign.secondaryColor,
          border: const OutlineInputBorder(
            borderRadius: KpDesign.cardBorderRadius,
            borderSide: BorderSide(
              color: KpDesign.highlightColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: KpDesign.cardBorderRadius,
            borderSide: BorderSide(
              color: KpDesign.highlightColor,
              width: 2,
            ),
          ),
          hintStyle: TextStyle(
            color: KpDesign.secondaryColor.withOpacity(0.7),
            fontFamily: fontFamily,
          ),
          labelStyle: TextStyle(
            color: KpDesign.highlightColor,
            fontFamily: fontFamily,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: KpDesign.primaryColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: KpDesign.headline2.copyWith(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: KpDesign.highlightColor,
          size: KpDesign.iconSizeMedium,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: KpDesign.highlightColor,
          elevation: KpDesign.buttonElevation,
          shape: RoundedRectangleBorder(
            borderRadius: KpDesign.buttonBorderRadius,
          ),
        ),
      );
}
