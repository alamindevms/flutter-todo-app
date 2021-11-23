import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Task{
  IconData? iconsData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool? isLast;

  Task({
      this.iconsData ,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left, this.done,
      this.isLast = false
  });

  static List<Task> generatetasks() {
    return [
      Task(
        iconsData: Icons.person_rounded,
        title: 'Personal',
        bgColor: cYellowLight,
        iconColor: cYellowDark,
        btnColor: cYellow,
        left: 3,
        done: 1
      ),
      Task(
          iconsData: Icons.cases_rounded,
          title: 'Work',
          bgColor: cRedLight,
          iconColor: cRedDark,
          btnColor: cRed,
          left: 0,
          done: 1
      ),
      Task(
          iconsData: Icons.person_rounded,
          title: 'Health',
          bgColor: cBlueLight,
          iconColor: cBlueDark,
          btnColor: cBlue,
          left: 0,
          done: 1
      ),
      Task(
        isLast: true
      )
    ];
  }
}