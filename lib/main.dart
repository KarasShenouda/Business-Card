// material - cupertino //

// Widgets
import 'package:first_flutter_project/BMICalculator.dart';
import 'package:first_flutter_project/login_screen.dart';
import 'package:first_flutter_project/task_3.dart';
import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Calculator App.dart';
import 'chats_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmi(),
    );
  }
}
