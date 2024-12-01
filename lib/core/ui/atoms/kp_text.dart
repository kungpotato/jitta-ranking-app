import 'package:flutter/material.dart';
import 'package:jitta_ranking/core/design_token/kp_design.dart';

class KpText extends StatelessWidget {
  KpText.headline1({
    required this.text,
    super.key,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
  }) : style = KpDesign.headline1;

  KpText.headline2({
    required this.text,
    super.key,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
  }) : style = KpDesign.headline2;

  KpText.body({
    required this.text,
    super.key,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow = TextOverflow.clip,
  }) : style = KpDesign.bodyText;

  KpText.button({
    required this.text,
    super.key,
    this.textAlign = TextAlign.center,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
  }) : style = KpDesign.buttonText;

  const KpText.custom({
    required this.text,
    required this.style,
    super.key,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow = TextOverflow.clip,
  });

  final String text;
  final TextStyle style;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: style,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );
}
