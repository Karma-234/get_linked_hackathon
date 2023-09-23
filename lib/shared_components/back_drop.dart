import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import 'app_positioned_widget.dart';

class AppBackDrop extends StatelessWidget {
  final double backDropHeight;
  final Widget child;
  final double imgHeight;
  final double? right;
  final double? left;
  final double? top;
  final double? bottom;
  final Widget? preChild;
  const AppBackDrop(
      {super.key,
      this.backDropHeight = 778,
      required this.child,
      this.preChild,
      this.right,
      this.left,
      this.top,
      this.bottom,
      this.imgHeight = 364});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: backDropHeight.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AppPositionedWidget(
            right: right,
            left: left,
            top: top,
            bottom: bottom,
            child: Image.asset(
              'flare'.png,
              height: imgHeight.h,
            ),
          ),
          preChild ?? const SizedBox.shrink(),
          Positioned.fill(child: child)
        ],
      ),
    );
  }
}
