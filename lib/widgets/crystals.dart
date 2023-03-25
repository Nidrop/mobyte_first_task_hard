import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_styles.dart';
import 'common/shadow_container.dart';
import 'common/violet_button.dart';

class Crystals extends StatelessWidget {
  const Crystals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        height: 169.h,
        width: 164.w,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Баланс кристаллов: 200 💎',
                  style: AppStyles.head3TextStyle,
                ),
                VioletButton(width: 119.w, height: 43.h, text: 'Потратить')
              ]),
        ));
  }
}
