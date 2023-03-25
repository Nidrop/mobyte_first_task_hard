import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_styles.dart';
import 'common/shadow_container.dart';

class Shifts extends StatelessWidget {
  const Shifts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
        height: 74.h,
        width: 175.w,
        child: Center(
            child: Text(
          'Мои смены',
          style: AppStyles.head3TextStyle,
        )));
  }
}
