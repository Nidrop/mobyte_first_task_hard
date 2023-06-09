import 'package:first_task_hard/style/app_styles.dart';
import 'package:first_task_hard/widgets/common/shadow_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleAnimation extends StatelessWidget {
  ScheduleAnimation({super.key, required this.controller})
      : width = Tween<double>(
          begin: 0,
          end: 298.w,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0,
              0.250,
              curve: Curves.ease,
            ),
          ),
        ),
        redColor = IntTween(
          begin: 0,
          end: 255,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              1.0,
              curve: Curves.linear,
            ),
          ),
        );

  final AnimationController controller;
  final Animation<double> width;
  final Animation<int> redColor;
  final String text = 'Нет расписания!';

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
      child: ShadowContainer(
          height: 65.h,
          width: 298.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '13:15 Обед',
                    style: AppStyles.head2TextStyle,
                  ),
                  Icon(Icons.arrow_forward)
                ]),
          )),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Stack(
      children: [
        child!,
        ShadowContainer(
            width: width.value,
            height: (width.value >= 65.h) ? 65.h : width.value,
            child: Center(
              child: Text(
                (width.value > 150.w) ? text : '',
                style: AppStyles.subheadTextStyle.copyWith(
                    color: Color.fromARGB(255, redColor.value, 73, 45)),
              ),
            ))
      ],
    );
  }
}
