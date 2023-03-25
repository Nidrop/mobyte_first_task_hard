import 'dart:math';

import 'package:first_task_hard/style/app_styles.dart';
import 'package:first_task_hard/widgets/common/progress_bar.dart';
import 'package:first_task_hard/widgets/common/shadow_container.dart';
import 'package:first_task_hard/widgets/common/violet_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/chat.dart';
import '../widgets/clubs.dart';
import '../widgets/coins.dart';
import '../widgets/crystals.dart';
import '../widgets/level.dart';
import '../widgets/profile.dart';
import '../widgets/schedule.dart';
import '../widgets/shifts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RotationTransition(
                turns: AlwaysStoppedAnimation(-5.79 / 360),
                child: Coins(),
              ),
              RotationTransition(
                turns: AlwaysStoppedAnimation(27.76 / 360),
                child: Profile(),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 10.w),
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(4.58 / 360),
              child: Level(),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 25.w),
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(-0.25 / 360),
              child: Schedule(),
            ),
          ),
          RotationTransition(
            turns: AlwaysStoppedAnimation(-2.76 / 360),
            child: Chat(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RotationTransition(
                turns: AlwaysStoppedAnimation(-1.51 / 360),
                child: Crystals(),
              ),
              SizedBox(
                height: 169.h,
                width: 164.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(-3.75 / 360),
                      child: Clubs(),
                    ),
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(2.32 / 360),
                      child: Shifts(),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
