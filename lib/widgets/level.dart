import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_styles.dart';
import 'common/progress_bar.dart';
import 'common/shadow_container.dart';

class Level extends StatelessWidget {
  const Level({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        height: 122.h,
        width: 301.w,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Уровень достижений: 5',
                  style: AppStyles.head3TextStyle,
                ),
                ProgressBar(width: 220.w, height: 31.h)
              ]),
        ));
  }
}
