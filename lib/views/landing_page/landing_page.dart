import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_linked_hackathon/core/colors.dart';
import 'package:get_linked_hackathon/core/theme/text_styles.dart';
import 'package:get_linked_hackathon/core/utils/constants.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';
import 'package:get_linked_hackathon/shared_components/buttons/app_primary_button.dart';

import 'widgets/astro_boy_image.dart';
import 'widgets/countdown_widget.dart';
import 'widgets/mobile_app_bar.dart';
import 'widgets/mobile_end_drawer.dart';

@RoutePage()
class LandingPageView extends StatefulWidget {
  const LandingPageView({super.key});

  @override
  State<LandingPageView> createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.p1,
      key: scaffoldKey,
      endDrawer: MobileEndDrawer(scaffoldKey: scaffoldKey),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 21.h, horizontal: 54.w),
                child: MobileAppBar(scaffoldKey: scaffoldKey),
              ),
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              31.verticalSpace,
              ...[
                Text(
                  'Igniting a Revolution in HR Innovation',
                  textAlign: TextAlign.center,
                  style: AppTextstyles.montserrat(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    textHeight: 20,
                    weight: FontWeight.w700,
                  ),
                ),
                2.verticalSpace,
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset('wavy-line'.svg),
                ),
                20.verticalSpace,
                Text(
                  'Participate in getlinked tech Hackathon\n 2023 stand a chance to win a Big prize',
                  textAlign: TextAlign.center,
                  style: AppTextstyles.montserrat(
                    fontSize: 13,
                    textHeight: 22,
                    weight: FontWeight.w400,
                  ),
                ),
                24.verticalSpace,
                const Center(
                  child: AppPrimaryButton(
                    textHeight: 17,
                    buttonWidth: 152,
                    textSize: 14,
                    buttonHeight: 27,
                  ),
                ),
                14.verticalSpace,
                const CountDownWidget(),
              ].addPadding(
                customPadding: EdgeInsets.symmetric(horizontal: 42.w),
              ),
              11.verticalSpace,
              const AstroBoyImageWidget(),
              // 29.verticalSpace,
              Image.asset(
                'big-idea'.png,
                height: 257.h,
              ),
              // 5.verticalSpace,
              Image.asset(
                'arrow'.png,
                height: 10.h,
                alignment: Alignment.center,
              ),
              20.verticalSpace,
              Text.rich(
                const TextSpan(
                  text: 'Introduction to getlinked\n',
                  children: [
                    TextSpan(
                      text: 'tech Hackathon 1.0',
                      style: TextStyle(color: AppColors.p3),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                style: AppTextstyles.clashDisplay(
                  fontSize: 20,
                  textHeight: 27,
                  weight: FontWeight.w700,
                ),
              ),
              Text(
                LandingPageConstants.introduction,
                textAlign: TextAlign.center,
                style: AppTextstyles.montserrat(
                  fontSize: 13,
                  textHeight: 27,
                ),
              ).addPadding(
                customPadding: EdgeInsets.symmetric(horizontal: 40.w),
              ),
              24.verticalSpace,
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              Image.asset(
                'sitting-lady'.png,
                height: 382.h,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              ).addPadding(
                customPadding: EdgeInsets.symmetric(horizontal: 40.w),
              ),
              Text.rich(
                const TextSpan(
                  text: 'Rules and\n',
                  children: [
                    TextSpan(
                      text: 'Guidelines',
                      style: TextStyle(color: AppColors.p3),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                style: AppTextstyles.clashDisplay(
                  fontSize: 20,
                  textHeight: 27,
                  weight: FontWeight.w700,
                ),
              ),
              Text(
                LandingPageConstants.ruleAndGuidelines,
                textAlign: TextAlign.center,
                style: AppTextstyles.montserrat(
                  fontSize: 13,
                  textHeight: 27,
                ),
              ).addPadding(
                customPadding: EdgeInsets.symmetric(horizontal: 40.w),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
