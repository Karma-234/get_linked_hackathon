import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../shared_components/buttons/app_primary_button.dart';
import '../../../shared_components/containers/gradient_border_container.dart';

class MobileEndDrawer extends StatelessWidget {
  const MobileEndDrawer({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(36.r),
      decoration: BoxDecoration(
        color: AppColors.p1,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => scaffoldKey.currentState?.closeEndDrawer(),
                child: GradientBorderContainer(
                  borderRadius: 100,
                  borderWidth: 30,
                  borderGradient: const LinearGradient(
                    colors: [AppColors.p2, AppColors.p4],
                  ),
                  child: SvgPicture.asset('close-drawer'.svg),
                ),
              ),
            ),
            50.verticalSpace,
            ...['Timeline', 'Overview', 'FAQs', 'Contact']
                .map(
                  (e) => Text(
                    e,
                    style: AppTextstyles.inter(
                        fontSize: 18,
                        textHeight: 22,
                        weight: FontWeight.w500,
                        letterSpacing: -1),
                  ),
                )
                .toList()
                .separateWith(20.verticalSpace),
            20.verticalSpace,
            const AppPrimaryButton(
              buttonWidth: 172,
            ),
          ],
        ),
      ),
    );
  }
}
