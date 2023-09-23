import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/theme/text_styles.dart';

class SectionHeaderText extends StatelessWidget {
  final String? whitetText;
  final String? coloredText;
  const SectionHeaderText({
    super.key,
    this.whitetText,
    this.coloredText,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: whitetText ?? 'Rules and\n',
        children: [
          TextSpan(
            text: coloredText ?? 'Guidelines',
            style: const TextStyle(color: AppColors.p3),
          ),
        ],
      ),
      textAlign: TextAlign.center,
      style: AppTextstyles.clashDisplay(
        fontSize: 20,
        textHeight: 27,
        weight: FontWeight.w700,
      ),
    );
  }
}
