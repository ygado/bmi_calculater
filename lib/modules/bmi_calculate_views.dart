import 'dart:math';

import 'package:bmi_calculator/modules/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../shared/component/components.dart';

class BmiCalculateViews extends StatefulWidget {
  const BmiCalculateViews({super.key});

  @override
  State<BmiCalculateViews> createState() => _BmiCalculateViewsState();
}

class _BmiCalculateViewsState extends State<BmiCalculateViews> {
  bool isMale = true;
  double height = 150;
  int weight = 20;
  int age = 20;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white10,
      appBar: defaultAppBar(title: 'BmiCalculate'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: defaultContainer(
                        text: 'Male',
                        color: Colors.white,
                        size: 30,
                        images: 'assets/images/male.svg',
                        colorContainer: isMale ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: defaultContainer(
                        text: 'Female',
                        color: Colors.white,
                        size: 30,
                        images: 'assets/images/female.svg',
                        colorContainer: !isMale ? Colors.blue : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  color: Colors.grey,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultText(
                        text: 'Height',
                        color: Colors.white,
                        size: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          defaultText(
                            text: '${height.round()}',
                            color: Colors.white,
                            size: 40,
                          ),
                          defaultText(
                            text: 'Cm',
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 250,
                        min: 80,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: defaultContainer2(
                      text1: 'Age',
                      text2: '${age.round()}',

                      onPressedAdd: () {
                        setState(() {
                          age++;
                        });
                      },
                      onPressedRemove: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: defaultContainer2(
                      text1: 'Weight',
                      text2: '${weight.round()}',
                      onPressedAdd: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onPressedRemove: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            defaultMaterialButton(
              fonSize: 25,
              text: 'Result',
              onPressed: () {
                result = weight / pow(height / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BmiResult(
                        gender: isMale ? 'Male' : 'Female',
                        age: age,
                        result: result.round(),
                      );
                    },
                  ),
                );
              },
              color: Colors.white,
              width: double.infinity,
              containerColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
