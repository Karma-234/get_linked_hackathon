import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';
import 'package:get_linked_hackathon/shared_components/app_positioned_widget.dart';

import '../../../core/colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/utils/constants.dart';
import '../../../shared_components/buttons/app_primary_button.dart';
import '../../../shared_components/text/icon_with_text.dart';
import '../../../shared_components/text/section_header_text.dart';

class PrivacyAndPolicySection extends StatelessWidget {
  const PrivacyAndPolicySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeaderText(
          whitetText: 'Privacy Policy and\n',
          coloredText: 'Terms',
        ),
        4.verticalSpace,
        Text(
          'Last updated on September 12, 2023',
          textAlign: TextAlign.center,
          style: AppTextstyles.montserrat(
            textHeight: 28,
            fontSize: 12,
            weight: FontWeight.w400,
            textColor: const Color.fromRGBO(255, 255, 255, 0.75),
          ),
        ),
        20.verticalSpace,
        Text(
          'Below are our privacy & policy, which outline a lot of goodies. it’s our aim to always take of our participant',
          textAlign: TextAlign.center,
          style: AppTextstyles.montserrat(
            textHeight: 23,
            fontSize: 12,
            weight: FontWeight.w400,
          ),
        ),
        30.verticalSpace,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: AppColors.p3),
          ),
          padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                LandingPageConstants.privacyPolicy,
                textAlign: TextAlign.center,
                style: AppTextstyles.montserrat(
                  textHeight: 26,
                  fontSize: 12,
                  weight: FontWeight.w400,
                ),
              ),
              21.verticalSpace,
              Text(
                'Licensing Policy',
                textAlign: TextAlign.left,
                style: AppTextstyles.montserrat(
                  textColor: AppColors.p3,
                  fontSize: 13,
                  textHeight: 28,
                ),
              ),
              Text(
                'Here are terms of our Standard License:',
                textAlign: TextAlign.left,
                style: AppTextstyles.montserrat(
                  fontSize: 12,
                  textHeight: 26,
                ),
              ),
              21.verticalSpace,
              ...LandingPageConstants.policies
                  .map((e) => AppIconWithText(
                        text: e,
                      ))
                  .toList()
                  .separateWith(18.verticalSpace),
              21.verticalSpace,
              const Align(
                child: AppPrimaryButton(
                  text: 'Read More',
                  buttonHeight: 32,
                  buttonWidth: 96,
                ),
              ),
            ],
          ),
        ),
        24.verticalSpace,
        SizedBox(
          height: 390.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AppPositionedWidget(
                top: 0,
                child: SvgPicture.asset('mobile-lock'.svg),
              ),
              AppPositionedWidget(
                bottom: 20,
                child: Image.asset('man-lock'.png),
              ),
              AppPositionedWidget(
                bottom: 80,
                right: 30,
                child: Image.asset(
                  'grey-star'.png,
                  height: 30,
                  width: 30,
                ),
              ),
              AppPositionedWidget(
                bottom: 80,
                left: 50,
                child: Image.asset(
                  'star'.png,
                  height: 30,
                  width: 30,
                ),
              ),
              AppPositionedWidget(
                top: 80,
                left: 30,
                child: Image.asset(
                  'star-pu'.png,
                  height: 30,
                  width: 30,
                ),
              ),
              AppPositionedWidget(
                top: 80,
                right: 100,
                child: Image.asset(
                  'star'.png,
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
        ),
        24.verticalSpace,
      ],
    ).addPadding(customPadding: EdgeInsets.symmetric(horizontal: 26.w));
  }
}
