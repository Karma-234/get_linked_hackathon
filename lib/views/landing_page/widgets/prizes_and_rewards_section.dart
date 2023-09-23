import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';
import 'package:get_linked_hackathon/shared_components/back_drop.dart';

import '../../../core/colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../shared_components/mobile_medal_widget.dart';
import '../../../shared_components/text/section_header_text.dart';

class PrizesAndRewardsSection extends StatelessWidget {
  const PrizesAndRewardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBackDrop(
      backDropHeight: 763,
      top: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SectionHeaderText(
            whitetText: 'Prizes and\n',
            coloredText: 'Rewards',
          ),
          Text(
            'Highlight of the prizes or rewards for winners and for participants.',
            textAlign: TextAlign.center,
            style: AppTextstyles.montserrat(textHeight: 21, fontSize: 12),
          ),
          Image.asset(
            'trophy'.png,
            height: 282.h,
            alignment: Alignment.center,
          ),
          AppBackDrop(
            backDropHeight: 300,
            left: -200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.up,
              textBaseline: TextBaseline.alphabetic,
              children: [
                const MobileMedalWidget(
                  imgUrl: 'silver-medal',
                  secondText: 'N300,000',
                  firstText: '2nd',
                  color: AppColors.p3,
                  height: 200,
                ),
                Column(
                  children: [
                    35.verticalSpace,
                    const MobileMedalWidget(),
                  ],
                ),
                const MobileMedalWidget(
                  imgUrl: 'bronze-medal',
                  secondText: 'N150,000',
                  firstText: '3rd',
                  color: AppColors.p3,
                  height: 200,
                ),
              ].separateWith(13.horizontalSpace),
            ),
          ),
        ],
      ),
    );
  }
}
