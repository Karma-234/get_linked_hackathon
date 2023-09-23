import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

import '../../../core/theme/text_styles.dart';
import '../../../shared_components/app_positioned_widget.dart';
import '../../../shared_components/text/section_header_text.dart';

class MobileFaQSection extends StatelessWidget {
  const MobileFaQSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionHeaderText(
          whitetText: 'Frequently Asked\n',
          coloredText: 'Questions',
        ),
        6.verticalSpace,
        Text.rich(
          const TextSpan(
            text:
                'We got answers to the questions that you might want to ask about ',
            children: [
              TextSpan(
                  text: 'getlinked Hackathon 1.0',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ))
            ],
          ),
          textAlign: TextAlign.center,
          style: AppTextstyles.montserrat(
              fontSize: 12, textHeight: 28, weight: FontWeight.w400),
        ),
        26.verticalSpace,
        SizedBox.fromSize(
          size: Size.square(350.h),
          child: Stack(
            children: [
              Positioned(
                top: 40,
                child: Image.asset('cwok'.png),
              ),
              const AppPositionedWidget(
                left: 60,
                top: 30,
              ),
              const AppPositionedWidget(
                fontSize: 64,
                left: 110,
                top: 24,
              ),
              const AppPositionedWidget(
                right: 120,
                top: 30,
              ),
              AppPositionedWidget(
                bottom: 45,
                right: 30,
                child: Image.asset(
                  'star'.png,
                  height: 16.h,
                ),
              ),
              AppPositionedWidget(
                top: 5,
                right: 135,
                child: Image.asset(
                  'sata-gra'.png,
                  height: 16.h,
                ),
              ),
              AppPositionedWidget(
                top: 150,
                left: 60,
                child: Image.asset(
                  'sata-gra'.png,
                  height: 16.h,
                ),
              ),
              AppPositionedWidget(
                top: 200,
                left: 0,
                child: Image.asset(
                  'grey-star'.png,
                  height: 12.h,
                ),
              ),
            ],
          ),
        ),
      ].addPadding(
        customPadding: EdgeInsets.symmetric(
          horizontal: 38.w,
        ),
      ),
    );
  }
}
