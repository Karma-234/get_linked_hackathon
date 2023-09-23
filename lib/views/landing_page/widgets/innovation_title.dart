import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/theme/text_styles.dart';

class InnovationTitle extends StatelessWidget {
  const InnovationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Igniting a Revolution in ',
        children: [
          WidgetSpan(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                const TextSpan(
                  text: 'HR Innovation',
                ),
                textAlign: TextAlign.center,
                style: AppTextstyles.montserrat(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  textHeight: 20,
                  weight: FontWeight.w700,
                ),
              ),
              SvgPicture.asset('wavy-line'.svg)
            ],
          ))
        ],
      ),
      textAlign: TextAlign.center,
      style: AppTextstyles.montserrat(
        fontStyle: FontStyle.italic,
        fontSize: 16,
        textHeight: 20,
        weight: FontWeight.w700,
      ),
    );
  }
}
