import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/colors.dart';
import '../../../core/theme/text_styles.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          const TextSpan(
            text: 'get',
            children: [
              TextSpan(
                text: 'linked',
                style: TextStyle(color: AppColors.p3),
              ),
            ],
          ),
          style: AppTextstyles.clashDisplay(
            fontSize: 15,
            textHeight: 19,
            weight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => scaffoldKey.currentState?.openEndDrawer(),
          child: SvgPicture.asset('drawer'.svg),
        )
      ],
    );
  }
}
