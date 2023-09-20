import 'package:flutter/material.dart';

import '../../../core/theme/text_styles.dart';

class CountDownWidget extends StatelessWidget {
  const CountDownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '00',
        children: [
          TextSpan(
            text: 'H',
            style: AppTextstyles.montserrat(
              fontSize: 14,
              textHeight: 19,
              weight: FontWeight.w400,
            ),
          ),
          const TextSpan(text: '  00'),
          TextSpan(
            text: 'M',
            style: AppTextstyles.montserrat(
              fontSize: 14,
              textHeight: 19,
              weight: FontWeight.w400,
            ),
          ),
          const TextSpan(text: '  00'),
          TextSpan(
            text: 'S',
            style: AppTextstyles.montserrat(
              fontSize: 14,
              textHeight: 19,
              weight: FontWeight.w400,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
      style: AppTextstyles.unica(
        fontSize: 48,
        textHeight: 64,
      ),
    );
  }
}
