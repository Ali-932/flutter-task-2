import 'package:flutter/material.dart';
import "dart:math";

class iicons {
  IconData icon;
  iicons({required this.icon});

  static List<IconData> iiconss = [
    Icons.home,
    Icons.ac_unit,
    Icons.add_task_sharp,
    Icons.area_chart,
    Icons.add_to_drive_rounded,
    Icons.apple_outlined,
    Icons.android,
  ];
   static getRandomElement() {
    final random = new Random();
    int i = random.nextInt(iiconss.length);
    return iiconss[i];
  }

  //var element = getRandomElement(iiconss);


}