import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_linked_hackathon/core/theme/text_styles.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

class AppIconWithText extends StatelessWidget {
  final String iconUrl;
  final String text;
  final Widget? separator;
  const AppIconWithText({
    super.key,
    this.iconUrl = 'list-item',
    this.text = '',
    this.separator,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconUrl.svg),
        separator ?? 14.horizontalSpace,
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: AppTextstyles.montserrat(
                fontSize: 12, textHeight: 21, weight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
