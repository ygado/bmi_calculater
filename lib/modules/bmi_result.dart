import 'package:flutter/material.dart';

import '../shared/component/components.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({
    super.key,
    required this.gender,
    required this.age,
    required this.result,
  });
  final String gender;
  final int age;
  final int result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: 'BmiResult'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            defaultText(text: 'Gender : ${gender}', color: Colors.blue, size: 25),
            defaultText(text: 'Age : ${age}', color: Colors.blue, size: 25),
            defaultText(text: 'Result : ${result}', color: Colors.blue, size: 25),
          ],
        ),
      ),
    );
  }
}
