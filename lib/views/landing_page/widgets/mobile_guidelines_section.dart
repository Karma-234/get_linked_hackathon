import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/theme/text_styles.dart';
import '../../../core/utils/constants.dart';
import '../../../shared_components/text/section_header_text.dart';

class MobileGuidelinesSection extends StatelessWidget {
  const MobileGuidelinesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'sitting-lady'.png,
          height: 382.h,
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ).addPadding(
          customPadding: EdgeInsets.symmetric(horizontal: 40.w),
        ),
        const SectionHeaderText(),
        Text(
          LandingPageConstants.ruleAndGuidelines,
          textAlign: TextAlign.center,
          style: AppTextstyles.montserrat(
            fontSize: 13,
            textHeight: 27,
          ),
        ).addPadding(
          customPadding: EdgeInsets.symmetric(horizontal: 40.w),
        )
      ],
    );
  }
}
