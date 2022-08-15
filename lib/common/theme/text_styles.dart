import 'package:flutter/material.dart';
import 'package:getx_pattern_base/common/constants/font_family.dart';
import 'package:getx_pattern_base/common/theme/palette.dart';

abstract class TextStyles {
  static const TextStyle mediumRegularText = TextStyle(
    fontFamily: FontFamily.raleway,
    color: Palette.zodiacBlue,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
}
