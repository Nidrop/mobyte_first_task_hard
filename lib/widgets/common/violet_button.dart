import 'package:first_task_hard/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VioletButton extends StatelessWidget {
  const VioletButton(
      {super.key,
      required this.width,
      required this.height,
      required this.text});

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xffedefff),
      ),
      child: Text(
        text,
        style: AppStyles.buttonTextStyle,
      ),
    );
  }
}
