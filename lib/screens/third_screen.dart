import 'package:flutter/material.dart';
import 'package:intern_radar_app_design/screens/first_screen.dart';

import '../constants/custom_colors.dart';
import '../constants/custom_text_style.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/map2.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: height * 0.22,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: Offset(0, -4),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your predicted\nRange is",
                        textAlign: TextAlign.center,
                        style: customTextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "50 Km",
                        style: customTextStyle(
                          color: primaryGreenColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 48,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => FirstScreen(),
                    ),
                  );
                },
                child: Container(
                  height: height * 0.08,
                  color: primaryBlueColor,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.1,
                      right: width * 0.16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "RE-CALCULATE",
                          style: customTextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
