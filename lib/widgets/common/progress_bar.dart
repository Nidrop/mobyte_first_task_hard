import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar(
      {super.key,
      required this.width,
      required this.height,
      this.percent = 72});

  final double width;
  final double height;
  final int percent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Color(0xffedefff),
            )),
        Positioned(
          child: Container(
              width: width * percent / 100,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color(0xffaaff82),
              )),
        )
      ],
    );
  }
}
