import 'package:flutter/material.dart';
import 'package:intern_radar_app_design/constants/custom_colors.dart';
import 'package:intern_radar_app_design/constants/custom_text_style.dart';
import 'package:intern_radar_app_design/constants/radar_app_icons.dart';
import 'package:intern_radar_app_design/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
              image: AssetImage("assets/map1.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: height * 0.18,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 8,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_searching_outlined,
                              size: 26,
                              color: primaryGreenColor,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Icon(
                              RadarApp.dots,
                              size: 22,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 2),
                            Icon(
                              RadarApp.location,
                              size: 26,
                              color: primaryRedColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.022,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height * 0.044,
                              width: width * 0.64,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: primaryBlueColor,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: width * 0.038),
                                  child: Text(
                                    "Mumbai",
                                    style: customTextStyle(
                                      color: primaryBlueColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Container(
                              height: height * 0.044,
                              width: width * 0.64,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: primaryBlueColor,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: width * 0.038),
                                  child: Text(
                                    "Where to ?",
                                    style: customTextStyle(
                                      color: primaryBlueColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.022,
                        ),
                        Icon(
                          RadarApp.swap_location,
                          size: 22,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: width * 0.04,
                        top: height * 0.02,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: CircleAvatar(
                          radius: height * 0.04,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Icon(
                              Icons.my_location,
                              color: primaryBlueColor,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => SecondScreen(),
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
                          "ADD VEHICLE DETAILS",
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
