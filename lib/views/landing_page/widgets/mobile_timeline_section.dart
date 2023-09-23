import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/theme/text_styles.dart';

class MobileTimelineSection extends StatelessWidget {
  const MobileTimelineSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Timeline',
          textAlign: TextAlign.center,
          style: AppTextstyles.clashDisplay(
            fontSize: 20,
            textHeight: 27,
          ),
        ),
        Text(
          'Here is the breakdown of the time we anticipate using for the upcoming event.',
          textAlign: TextAlign.center,
          style: AppTextstyles.montserrat(
            fontSize: 14,
            textHeight: 24,
          ),
        ),
        24.verticalSpace,
        Image.asset(
          'star-pu'.png,
          height: 14.h,
          alignment: Alignment.topLeft,
        ).addPadding(
          customPadding: EdgeInsets.only(left: 30.w),
        ),
      ],
    );
  }
}
