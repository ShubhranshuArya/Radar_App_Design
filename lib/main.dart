import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intern_radar_app_design/constants/custom_colors.dart';
import 'package:intern_radar_app_design/screens/first_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: primaryBlueColor,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}
