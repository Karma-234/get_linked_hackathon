import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/utils/constants.dart';
import '../../../shared_components/buttons/app_primary_button.dart';
import '../../../shared_components/text/attribute_text.dart';
import '../../../shared_components/text/section_header_text.dart';

class MobileCriteriaSection extends StatelessWidget {
  const MobileCriteriaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'judging'.png,
          height: 275.h,
        ),
        const SectionHeaderText(
          whitetText: 'Judging Criteria\n',
          coloredText: 'Key attributes',
        ),
        ...List.generate(
          LandingPageConstants.keyAttributesTitle.length,
          (i) => AttributeText(
              title: LandingPageConstants.keyAttributesTitle[i],
              attribute: LandingPageConstants.keyAttributesContent[i]),
        ).separateWith(12.verticalSpace),
        16.verticalSpace,
        const Align(
          child: AppPrimaryButton(
            text: 'Read More',
            buttonHeight: 32,
            buttonWidth: 96,
            textHeight: 15,
            textSize: 12,
          ),
        ),
        26.verticalSpace,
      ].addPadding(customPadding: EdgeInsets.symmetric(horizontal: 26.w)),
    );
  }
}
