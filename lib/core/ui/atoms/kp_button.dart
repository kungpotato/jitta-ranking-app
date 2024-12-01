import 'package:flutter/material.dart';

import '../../design_token/kp_design.dart';

class ButtonStyles {
  static ButtonStyle elevatedButtonStyle({
    required Color backgroundColor,
    required Color textColor,
  }) =>
      ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      );

  static ButtonStyle outlinedButtonStyle({
    required Color borderColor,
    required Color textColor,
  }) =>
      OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        foregroundColor: textColor,
      );

  static ButtonStyle textButtonStyle({required Color textColor}) =>
      TextButton.styleFrom(
        foregroundColor: textColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      );
}

class KpButtons {
  static ElevatedButton primaryElevatedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.elevatedButtonStyle(
          backgroundColor: KpDesign.primaryColor,
          textColor: KpDesign.textColor,
        ),
        child: Text(text),
      );

  static ElevatedButton successElevatedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.elevatedButtonStyle(
          backgroundColor: KpDesign.successColor,
          textColor: KpDesign.textColor,
        ),
        child: Text(text),
      );

  static ElevatedButton warningElevatedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.elevatedButtonStyle(
          backgroundColor: KpDesign.warningColor,
          textColor: KpDesign.textColor,
        ),
        child: Text(text),
      );

  static ElevatedButton dangerElevatedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyles.elevatedButtonStyle(
          backgroundColor: KpDesign.alertColor,
          textColor: KpDesign.textColor,
        ),
        child: Text(text),
      );

  static OutlinedButton primaryOutlinedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyles.outlinedButtonStyle(
          borderColor: KpDesign.alertColor,
          textColor: KpDesign.primaryColor,
        ),
        child: Text(text),
      );

  static OutlinedButton successOutlinedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyles.outlinedButtonStyle(
          borderColor: KpDesign.alertColor,
          textColor: KpDesign.successColor,
        ),
        child: Text(text),
      );

  static OutlinedButton warningOutlinedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyles.outlinedButtonStyle(
          borderColor: KpDesign.warningColor,
          textColor: KpDesign.primaryColor,
        ),
        child: Text(text),
      );

  static OutlinedButton dangerOutlinedButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyles.outlinedButtonStyle(
          borderColor: KpDesign.alertColor,
          textColor: KpDesign.primaryColor,
        ),
        child: Text(text),
      );

  // Text Buttons
  static TextButton primaryTextButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      TextButton(
        onPressed: onPressed,
        style: ButtonStyles.textButtonStyle(textColor: KpDesign.primaryColor),
        child: Text(text),
      );

  static TextButton successTextButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      TextButton(
        onPressed: onPressed,
        style: ButtonStyles.textButtonStyle(textColor: KpDesign.successColor),
        child: Text(text),
      );

  static TextButton warningTextButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      TextButton(
        onPressed: onPressed,
        style: ButtonStyles.textButtonStyle(textColor: KpDesign.warningColor),
        child: Text(text),
      );

  static TextButton dangerTextButton({
    required String text,
    required VoidCallback onPressed,
  }) =>
      TextButton(
        onPressed: onPressed,
        style: ButtonStyles.textButtonStyle(textColor: KpDesign.alertColor),
        child: Text(text),
      );
}
