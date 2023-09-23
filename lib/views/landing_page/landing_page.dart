import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/colors.dart';
import 'package:get_linked_hackathon/core/theme/text_styles.dart';
import 'package:get_linked_hackathon/core/utils/constants.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../shared_components/text/section_header_text.dart';
import 'widgets/footer_section.dart';
import 'widgets/mobile_criteria_section.dart';
import 'widgets/mobile_end_drawer.dart';
import 'widgets/mobile_faq_section.dart';
import 'widgets/mobile_guidelines_section.dart';
import 'widgets/mobile_timeline_section.dart';
import 'widgets/partners_sponsors_section.dart';
import 'widgets/privacy_and_policy_section.dart';
import 'widgets/prizes_and_rewards_section.dart';
import 'widgets/top_section.dart';

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
              TopSection(scaffoldKey: scaffoldKey),
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
              const SectionHeaderText(
                whitetText: 'Introduction to getlinked\n',
                coloredText: 'tech Hackathon 1.0',
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
              const MobileGuidelinesSection(),
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              const MobileCriteriaSection(),
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              26.verticalSpace,
              const MobileFaQSection(),
              26.verticalSpace,
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              24.verticalSpace,
              const MobileTimelineSection(),
              26.verticalSpace,
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              24.verticalSpace,
              const PrizesAndRewardsSection(),
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              24.verticalSpace,
              const PartnersAndSponsorsSection(),
              26.verticalSpace,
              const Divider(
                color: Color.fromRGBO(255, 255, 255, 0.18),
              ),
              24.verticalSpace,
              const PrivacyAndPolicySection(),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
