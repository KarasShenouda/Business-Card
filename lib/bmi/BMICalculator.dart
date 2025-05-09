import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_glow_border/gradient_glow_border.dart';
import 'package:parallax_rain/parallax_rain.dart';
import '../ResultScreen.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  // datatype variableName = value;

  // int - double - String - bool
  double height = 20;
  int weight = 10;
  int age = 10;
  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Bmi Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ParallaxRain(
            dropColors: [
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.yellow,
              Colors.brown,
              Colors.blueGrey
            ],
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
          Column(
            spacing: 10,
            children: [
              Row(
                spacing: 5,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Container(
                      height: 190,
                      width: 185,
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.male
                            ? Colors.white60
                            : Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.male, size: 100, color: Colors.white),
                          Text(
                            "Male",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Container(
                      height: 190,
                      width: 185,
                      decoration: BoxDecoration(
                        color: selectedGender == Gender.female
                            ? Colors.white60
                            : Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: GradientGlowBorder.normalGradient(
                  borderRadius: BorderRadius.circular(15),
                  blurRadius: 1,
                  spreadRadius: 1,
                  colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.amber,
                    Colors.purple,
                  ],
                  glowOpacity: 1,
                  duration: Duration(milliseconds: 5000),
                  thickness: 3,
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          height.round().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Slider(
                          value: height,
                          min: 20,
                          max: 220,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                spacing: 5,
                children: [
                  Container(
                    height: 190,
                    width: 185,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white38,
                                foregroundColor: Colors.white,
                              ),
                              icon: Icon(Icons.plus_one),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white38,
                                foregroundColor: Colors.white,
                              ),
                              icon: Icon(Icons.exposure_minus_1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white38,
                                foregroundColor: Colors.white,
                              ),
                              icon: Icon(Icons.plus_one),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white38,
                                foregroundColor: Colors.white,
                              ),
                              icon: Icon(Icons.exposure_minus_1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // double
                  double bmi = weight / pow(height / 100, 2);

                  Get.to(
                    ResultScreen(result: bmi),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// enum //
enum Gender {
  none,
  male,
  female,
}
