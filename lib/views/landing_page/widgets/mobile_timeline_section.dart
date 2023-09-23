import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_linked_hackathon/core/colors.dart';
import 'package:get_linked_hackathon/core/utils/constants.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../core/theme/text_styles.dart';

class MobileTimelineSection extends StatelessWidget {
  const MobileTimelineSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Timeline',
          textAlign: TextAlign.center,
          style: AppTextstyles.clashDisplay(
            fontSize: 20,
            textHeight: 27,
          ),
        ),
        Text(
          'Here is the breakdown of the time we anticipate using for the upcoming event.',
          textAlign: TextAlign.center,
          style: AppTextstyles.montserrat(
            fontSize: 14,
            textHeight: 24,
          ),
        ),
        24.verticalSpace,
        Image.asset(
          'star-pu'.png,
          height: 14.h,
          alignment: Alignment.topLeft,
        ).addPadding(
          customPadding: EdgeInsets.only(left: 30.w),
        ),
        16.verticalSpace,
        ...List.generate(
            LandingPageConstants.timeLineHeader.length,
            (i) => MobileTimelineWidget(
                  title: LandingPageConstants.timeLineHeader[i],
                  body: LandingPageConstants.timeLineContent[i],
                  index: (i + 1).toString(),
                )).toList().separateWith(4.verticalSpace)
      ],
    ).addPadding(
      customPadding: EdgeInsetsDirectional.symmetric(horizontal: 25.w),
    );
  }
}

class MobileTimelineWidget extends StatelessWidget {
  final String? title;
  final String? body;
  final String index;
  const MobileTimelineWidget({
    super.key,
    this.title,
    this.body,
    this.index = '1',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(minHeight: 61.h),
          margin: EdgeInsets.only(left: 9.5.w),
          child: TimelineTile(
            hasIndicator: false,
            afterLineStyle: const LineStyle(color: AppColors.p3, thickness: 2),
            beforeLineStyle: const LineStyle(color: AppColors.p3, thickness: 2),
            endChild: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? 'Hackathon Announcement',
                  style: AppTextstyles.montserrat(
                    fontSize: 12,
                    textHeight: 15,
                    textColor: AppColors.p3,
                  ),
                ),
                Text(
                  body ??
                      'The getlinked tech hackathon 1.0 is formally announced to the general public and teams begin to get ready to register',
                  style: AppTextstyles.montserrat(
                    fontSize: 12,
                    textHeight: 19,
                  ),
                ),
              ],
            ).addPadding(
              customPadding: EdgeInsetsDirectional.only(start: 19.w),
            ),
          ),
        ),
        4.verticalSpace,
        Row(
          children: [
            Container(
              height: 20.h,
              width: 20.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [AppColors.p2, AppColors.p3],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                index,
                style: AppTextstyles.montserrat(fontSize: 12, textHeight: 15),
              ),
            ),
            10.horizontalSpace,
            Text(
              'November 18, 2023',
              style: AppTextstyles.montserrat(
                fontSize: 12,
                textHeight: 15,
                textColor: AppColors.p3,
              ),
            )
          ],
        ),
      ],
    );
  }
}
