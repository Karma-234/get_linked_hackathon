import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/theme/text_styles.dart';

class AppPositionedWidget extends StatelessWidget {
  final double? right;
  final double? left;
  final double? top;
  final double? bottom;
  final Widget? child;
  final String? text;
  final TextStyle? appTextStyle;
  final double? fontSize;
  const AppPositionedWidget({
    super.key,
    this.right,
    this.left,
    this.top,
    this.bottom,
    this.child,
    this.text,
    this.appTextStyle,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      bottom: bottom,
      right: right,
      child: child ??
          Text(
            text ?? '?',
            style: appTextStyle ??
                AppTextstyles.tommmyOutline(
                    textColor: AppColors.p3, fontSize: fontSize ?? 40),
          ),
    );
  }
}
