import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';
import 'package:get_linked_hackathon/shared_components/text/icon_with_text.dart';

import '../../../core/colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/utils/constants.dart';
import '../../../shared_components/text/section_header_text.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF100B20),
      padding: EdgeInsets.all(51.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHeaderText(
            whitetText: 'get',
            coloredText: 'linked',
            align: TextAlign.left,
          ),
          12.verticalSpace,
          Text(
            LandingPageConstants.footerSummary,
            style: AppTextstyles.montserrat(
              fontSize: 12,
              textHeight: 21,
              weight: FontWeight.w400,
            ),
          ),
          35.verticalSpace,
          Row(
            children: ['Terms of Use', 'Privacy Policy']
                .map((e) => Text(
                      e,
                      style: AppTextstyles.montserrat(
                        fontSize: 12,
                        textHeight: 20,
                        weight: FontWeight.w400,
                      ),
                    ))
                .toList()
                .separateWith(Row(
                  children: [
                    4.horizontalSpace,
                    SizedBox(
                      height: 17.h,
                      child: const VerticalDivider(
                        thickness: 2,
                        color: AppColors.p3,
                      ),
                    ),
                    4.horizontalSpace,
                  ],
                )),
          ),
          32.verticalSpace,
          Text(
            'Useful Links',
            style: AppTextstyles.montserrat(
                fontSize: 14,
                textHeight: 24,
                weight: FontWeight.w600,
                textColor: AppColors.p3),
          ),
          6.verticalSpace,
          ...['Overview', 'Timeline', 'FAQs', 'Register']
              .map((e) => Text(
                    e,
                    style: AppTextstyles.montserrat(
                      fontSize: 12,
                      textHeight: 20,
                      weight: FontWeight.w400,
                    ),
                  ))
              .toList()
              .separateWith(11.verticalSpace),
          11.verticalSpace,
          Row(
            children: [
              Text(
                'Follow us',
                style: AppTextstyles.montserrat(
                  fontSize: 12,
                  textHeight: 20,
                  weight: FontWeight.w400,
                  textColor: AppColors.p3,
                ),
              ),
              16.horizontalSpace,
              ...['instagram', 'twitter', 'facebook', 'linkedin']
                  .map((e) => SvgPicture.asset(e.svg))
                  .toList()
                  .separateWith(16.horizontalSpace),
            ],
          ),
          61.verticalSpace,
          Text(
            'Contact Us',
            style: AppTextstyles.montserrat(
                fontSize: 14,
                textHeight: 24,
                weight: FontWeight.w600,
                textColor: AppColors.p3),
          ),
          5.verticalSpace,
          const AppIconWithText(
            crossAxisAlignment: CrossAxisAlignment.start,
            textBaseline: TextBaseline.alphabetic,
            iconUrl: 'phone',
            text: '+234  6707653444',
          ),
          22.verticalSpace,
          const AppIconWithText(
            crossAxisAlignment: CrossAxisAlignment.start,
            iconUrl: 'locator',
            text: '27,Alara Street\nYaba 100012 \nLagos State',
          ),
          60.verticalSpace,
          Text(
            'All rights reserved. © getlinked Ltd.',
            textAlign: TextAlign.center,
            style: AppTextstyles.montserrat(
              fontSize: 12,
              textHeight: 20,
              weight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
