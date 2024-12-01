import 'package:flutter/material.dart';
import 'package:jitta_ranking/core/ui/atoms/kp_text.dart';

class KpAppBar extends AppBar {
  KpAppBar({this.text = '', super.key, super.centerTitle})
      : super(title: KpText.headline1(text: text));
  final String text;
}
