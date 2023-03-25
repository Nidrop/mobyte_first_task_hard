import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_styles.dart';
import 'common/shadow_container.dart';
import 'common/violet_button.dart';

class Coins extends StatelessWidget {
  const Coins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        height: 122.h,
        width: 254.w,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Баланс монет: 1500 💸',
                  style: AppStyles.head3TextStyle,
                ),
                VioletButton(
                  width: 186.w,
                  height: 43.h,
                  text: 'Потратить',
                )
              ]),
        ));
  }
}
