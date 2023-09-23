import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/colors.dart';

import '../../core/theme/text_styles.dart';

class AttributeText extends StatelessWidget {
  final String title;
  final String attribute;
  const AttributeText({
    super.key,
    required this.title,
    required this.attribute,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: title,
        children: [
          TextSpan(
              text: attribute,
              style: TextStyle(
                fontSize: 12.spMin,
                height: (21 / 12).spMin,
                color: Colors.white,
              ))
        ],
      ),
      textAlign: TextAlign.center,
      style: AppTextstyles.montserrat(
        fontSize: 13,
        textHeight: 23,
        textColor: AppColors.p4,
      ),
    );
  }
}
