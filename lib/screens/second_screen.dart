import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_radar_app_design/constants/custom_colors.dart';
import 'package:intern_radar_app_design/constants/custom_text_style.dart';
import 'package:intern_radar_app_design/constants/radar_app_icons.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double fanSpeed = 2;
  double initialCharge = 42;
  double finalCharge = 12;
  Color initalColor = primaryYellowColor;
  Color finalColor = primaryRedColor;
  int passengers = 1;
  bool isHot = false;

  void conditioning() {
    setState(() {
      isHot = !isHot;
    });
  }

  void passengerInc() {
    setState(() {
      passengers += 1;
    });
  }

  void passengerDec() {
    if (passengers <= 1) {
      return;
    }
    setState(() {
      passengers -= 1;
    });
  }

  void fanSpeedSlider(double newSpeed) {
    setState(() {
      fanSpeed = newSpeed;
    });
  }

  void initialChargeSlider(double newICharge) {
    setState(
      () {
        initialCharge = newICharge;
        if (initialCharge <= 20) {
          initalColor = primaryRedColor;
        } else if (initialCharge <= 70) {
          initalColor = primaryYellowColor;
        } else {
          initalColor = primaryGreenColor;
        }
      },
    );
  }

  void finalChargeSlider(double newFCharge) {
    setState(() {
      finalCharge = newFCharge;
      if (finalCharge <= 20) {
        finalColor = primaryRedColor;
      } else if (finalCharge <= 70) {
        finalColor = primaryYellowColor;
      } else {
        finalColor = primaryGreenColor;
      }
    });
  }

  Color sliderColor(int val) {
    if (val <= 20) {
      return primaryRedColor;
    } else if (val <= 70) {
      return primaryYellowColor;
    } else {
      return primaryGreenColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.04,
                bottom: height * 0.04,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "VEHICLE DETAILS",
                      style: customTextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.02,
                      left: width * 0.1,
                      right: width * 0.08,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Passengers",
                              style: customTextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: height * 0.04,
                              width: width * 0.26,
                              decoration: BoxDecoration(
                                color: primaryBlueColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: passengerDec,
                                    child: Icon(
                                      RadarApp.minus_sign,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    height: height * 0.032,
                                    width: width * 0.1,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        passengers.toString(),
                                        style: customTextStyle(
                                          fontSize: 18,
                                          color: primaryBlueColor,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  GestureDetector(
                                    onTap: passengerInc,
                                    child: Icon(
                                      RadarApp.plus_sign,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.032),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Luggage Weight",
                                style: customTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: height * 0.04,
                                width: width * 0.22,
                                decoration: BoxDecoration(
                                  color: primaryBlueColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: height * 0.03,
                                      width: width * 0.1,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          maxLength: 3,
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            hintText: "38",
                                            counterText: "",
                                            contentPadding: EdgeInsets.only(
                                              bottom: height * 0.016,
                                            ),
                                          ),
                                          style: customTextStyle(
                                            fontSize: 14,
                                            color: primaryBlueColor,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      // child: TextField(
                                      //   cursorWidth: 2,
                                      //   keyboardType: TextInputType.number,
                                      //   textAlign: TextAlign.center,
                                      //   decoration: InputDecoration(
                                      //     contentPadding: EdgeInsets.zero,

                                      //     // border: InputBorder.none,
                                      //   ),
                                      // style: customTextStyle(
                                      //   fontSize: 12,
                                      //   color: primaryBlueColor,
                                      //   fontWeight: FontWeight.normal,
                                      // ),
                                      // ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      child: Text(
                                        "Kg",
                                        style: customTextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.032),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Air Conditioning",
                                style: customTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: height * 0.042,
                                width: width * 0.26,
                                decoration: BoxDecoration(
                                  color: primaryBlueColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: height * 0.032,
                                      width: width * 0.12,
                                      decoration: isHot
                                          ? BoxDecoration(
                                              color: primaryBlueColor,
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(4),
                                              ),
                                            )
                                          : BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                left: Radius.circular(4),
                                              ),
                                            ),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: conditioning,
                                          child: Text(
                                            "Hot",
                                            style: customTextStyle(
                                              fontSize: 18,
                                              color: isHot
                                                  ? Colors.white
                                                  : primaryBlueColor,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.032,
                                      width: width * 0.12,
                                      decoration: isHot
                                          ? BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(4),
                                              ),
                                            )
                                          : BoxDecoration(
                                              color: primaryBlueColor,
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(4),
                                              ),
                                            ),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: conditioning,
                                          child: Text(
                                            "Cold",
                                            style: customTextStyle(
                                              fontSize: 18,
                                              color: isHot
                                                  ? primaryBlueColor
                                                  : Colors.white,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: SleekCircularSlider(
                            appearance: CircularSliderAppearance(),
                            initialValue: 2,
                            min: 0,
                            max: 5,
                            onChange: (double value) {},
                            innerWidget: (double value) {
                              return Center(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: value.toInt().toString(),
                                        style: customTextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "\nFan Speed",
                                        style: customTextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Initial charge of the battery",
                              style: customTextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "${initialCharge.toInt()} %",
                              style: customTextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: initalColor,
                              ),
                            ),
                            Slider(
                              value: initialCharge,
                              onChanged: initialChargeSlider,
                              min: 0,
                              max: 100,
                              activeColor: initalColor,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.02),
                          child: Column(
                            children: [
                              Text(
                                "% upto which you want to\ndrain your battery",
                                textAlign: TextAlign.center,
                                style: customTextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                "${finalCharge.toInt()} %",
                                style: customTextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: finalColor,
                                ),
                              ),
                              Slider(
                                value: finalCharge,
                                onChanged: finalChargeSlider,
                                min: 0,
                                max: 100,
                                activeColor: finalColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ThirdScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: primaryBlueColor, width: 4),
                      ),
                      child: Center(
                        child: Text(
                          "Predict My Vehicles Range",
                          style: customTextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: primaryBlueColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
