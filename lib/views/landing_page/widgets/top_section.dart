import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';
import 'package:get_linked_hackathon/shared_components/back_drop.dart';

import '../../../core/theme/text_styles.dart';
import '../../../shared_components/buttons/app_primary_button.dart';
import 'astro_boy_image.dart';
import 'countdown_widget.dart';
import 'innovation_title.dart';
import 'mobile_app_bar.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBackDrop(
      top: 20,
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
            const InnovationTitle(),
            10.verticalSpace,
            Image.asset('mobile-title'.png),
            9.verticalSpace,
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
        ],
      ),
    );
  }
}
