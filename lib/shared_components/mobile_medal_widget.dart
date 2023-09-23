import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../core/colors.dart';
import '../core/theme/text_styles.dart';
import 'app_positioned_widget.dart';

class MobileMedalWidget extends StatelessWidget {
  final Color color;
  final String? firstText;
  final String? secondText;
  final double height;
  final String imgUrl;

  const MobileMedalWidget({
    super.key,
    this.color = AppColors.p2,
    this.firstText,
    this.secondText,
    this.height = 250,
    this.imgUrl = 'gold-medal',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: 90.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AppPositionedWidget(
            top: (height / 100) * 40,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: color.withOpacity(0.12),
                border: Border.all(
                  color: color,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  41.verticalSpace,
                  Text(
                    firstText ?? '1st',
                    style: AppTextstyles.montserrat(
                      fontSize: 12,
                      textHeight: 25,
                    ),
                  ),
                  Text(
                    'Runner',
                    style: AppTextstyles.montserrat(
                      fontSize: 12,
                      textHeight: 25,
                      weight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    secondText ?? 'N400,000',
                    style: AppTextstyles.montserrat(
                        fontSize: 14, textHeight: 30, textColor: color),
                  ),
                  22.verticalSpace,
                ].addPadding(
                    customPadding: EdgeInsets.symmetric(horizontal: 9.w)),
              ),
            ),
          ),
          AppPositionedWidget(
            top: 15,
            child: Image.asset(
              imgUrl.png,
              alignment: Alignment.centerLeft,
              fit: BoxFit.fill,
              height: (height / 100) * 50,
              width: (height / 100) * 50,
            ),
          )
        ],
      ),
    );
  }
}
