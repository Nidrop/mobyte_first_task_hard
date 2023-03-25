import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static var mainTheme = ThemeData(fontFamily: 'Montserrat');
  static var mainTextColor = Color(0xff03314b);
  static var red = Color(0xffe6492d);

  static var head1TextStyle = TextStyle(
      fontSize: 28.sp, fontWeight: FontWeight.w700, color: mainTextColor);
  static var head2TextStyle = TextStyle(
      fontSize: 26.sp, fontWeight: FontWeight.w700, color: mainTextColor);
  static var head3TextStyle = TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w700, color: mainTextColor);
  static var subheadTextStyle = TextStyle(
      fontSize: 15.sp, fontWeight: FontWeight.w600, color: mainTextColor);

  static var buttonTextStyle = TextStyle(
      color: Color(0xff3d5dfa),
      fontFamily: 'Spartan',
      fontSize: 15.sp,
      fontWeight: FontWeight.w600);
}
