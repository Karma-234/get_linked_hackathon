import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../shared_components/text/section_header_text.dart';

class PartnersAndSponsorsSection extends StatelessWidget {
  const PartnersAndSponsorsSection({
    super.key,
  });
  static const logos = [
    'liberty-assured',
    'liberty-pay',
    'winwise',
    'vuzual-plus',
    'paybox',
    'whisper-sms'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeaderText(
          whitetText: 'Partners and Sponsors',
          coloredText: '',
        ),
        Text(
          'Getlinked Hackathon 1.0 is honored to have the following major companies as its partners and sponsors',
          textAlign: TextAlign.center,
          style: AppTextstyles.montserrat(fontSize: 12, textHeight: 21),
        ),
        41.verticalSpace,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: AppColors.p3),
          ),
          padding: EdgeInsets.symmetric(vertical: 38.h),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              (PartnersAndSponsorsSection.logos.length ~/ 2),
              (i) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    PartnersAndSponsorsSection.logos[i].png,
                    height: 30.h,
                    width: 30.h,
                  ),
                  SizedBox(
                    width: 68.h,
                    child: const Divider(
                      color: AppColors.p3,
                      thickness: 2,
                    ),
                  ),
                  Image.asset(
                    PartnersAndSponsorsSection
                        .logos[
                            (PartnersAndSponsorsSection.logos.length - 1) - i]
                        .png,
                    height: 30.h,
                    width: 30.h,
                  ),
                ],
              ),
            ).separateWith(Column(
              children: [
                SizedBox(
                  height: 30.h,
                  child: const VerticalDivider(
                    color: AppColors.p3,
                    thickness: 2,
                  ),
                ),
                15.verticalSpace,
                SizedBox(
                  height: 30.h,
                  child: const VerticalDivider(
                    color: AppColors.p3,
                    thickness: 2,
                  ),
                ),
              ],
            )),
          ),
        ),
      ],
    ).addPadding(customPadding: EdgeInsets.symmetric(horizontal: 30.w));
  }
}
