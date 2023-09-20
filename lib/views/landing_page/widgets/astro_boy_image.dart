import 'package:flutter/material.dart';
import 'package:get_linked_hackathon/core/utils/extensions.dart';

class AstroBoyImageWidget extends StatelessWidget {
  const AstroBoyImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'glasses'.png,
              fit: BoxFit.fill,
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'virtual-sphere'.png,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
