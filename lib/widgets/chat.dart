import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_styles.dart';
import 'common/shadow_container.dart';
import 'common/violet_button.dart';

class Chat extends StatefulWidget {
  const Chat({
    super.key,
  });

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> with SingleTickerProviderStateMixin {
  late AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animController.forward();
        Future.delayed(Duration(milliseconds: 250), () {
          _animController.reverse();
        });
        _onTap();
      },
      child: ScaleTransition(
        scale: Tween<double>(begin: 1.0, end: 0.9).animate(_animController),
        child: ShadowContainer(
            height: 168.h,
            width: 354.w,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 13.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Сейчас идёт',
                          style: AppStyles.subheadTextStyle
                              .copyWith(color: AppStyles.red),
                        ),
                        Text(
                          '1 Смена 2022',
                          style: AppStyles.head1TextStyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Корпус №3   Отряд №2',
                          style: AppStyles.subheadTextStyle,
                        ),
                      ],
                    ),
                    Center(
                      child: VioletButton(
                          width: 324.w,
                          height: 40.h,
                          text: 'Чат отряда (3 сообщ.)'),
                    )
                  ]),
            )),
      ),
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  void _onTap() {}
}
