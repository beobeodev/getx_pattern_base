import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_pattern_base/common/theme/palette.dart';
import 'package:getx_pattern_base/common/theme/text_styles.dart';

abstract class SnackbarUtil {
  static void showSuccess(String message, BuildContext context) {
    return showGeneral(
      message,
      context,
      backgroundColor: Palette.green300,
      prefixIcon: Icons.check_circle_rounded,
    );
  }

  static void showError(String message, BuildContext context) {
    return showGeneral(
      message,
      context,
      backgroundColor: Palette.red300,
      prefixIcon: Icons.highlight_off_rounded,
    );
  }

  static void showGeneral(
    String message,
    BuildContext context, {
    Color? backgroundColor,
    IconData? prefixIcon,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (prefixIcon != null)
              Icon(
                prefixIcon,
                size: 24,
                color: Colors.white,
              ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                message,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.regularText
                    .copyWith(color: Colors.white, fontSize: 16.sp),
              ),
            )
          ],
        ),
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        elevation: 0.5,
      ),
    );
  }
}
