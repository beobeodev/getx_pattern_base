import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_pattern_base/common/theme/palette.dart';
import 'package:getx_pattern_base/common/theme/text_styles.dart';
import 'package:getx_pattern_base/common/widgets/loading_dot.widget.dart';

class RoundedButton extends StatelessWidget {
  final void Function() onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final double fontSize;
  final Color backgroundColor;
  final Color disableBackgroundColor;
  final Color textColor;
  final String content;
  final bool isLoading;
  final bool isDisable;

  const RoundedButton({
    Key? key,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 50,
    this.fontSize = 20,
    this.borderRadius = 10,
    this.backgroundColor = Palette.red300,
    this.disableBackgroundColor = Palette.gray300,
    this.textColor = Colors.white,
    required this.content,
    this.isLoading = false,
    this.isDisable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isDisable ? null : onPressed,
      style: TextButton.styleFrom(
        fixedSize: Size(width, height),
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: isDisable ? disableBackgroundColor : backgroundColor,
      ),
      child: isLoading
          ? const LoadingDot()
          : Text(
              content,
              style: TextStyles.boldText
                  .copyWith(fontSize: fontSize.sp, color: textColor),
            ),
    );
  }
}
