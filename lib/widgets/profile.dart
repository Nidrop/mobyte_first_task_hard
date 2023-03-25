import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_styles.dart';
import 'common/shadow_container.dart';

class Profile extends StatefulWidget {
  const Profile({
    super.key,
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _animController =
        AnimationController(duration: const Duration(seconds: 30), vsync: this)
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animController,
      alignment: Alignment.center,
      child: ShadowContainer(
          height: 89.h,
          width: 112.w,
          child: Center(
              child: Text(
            'Профиль',
            style: AppStyles.head3TextStyle,
          ))),
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }
}
