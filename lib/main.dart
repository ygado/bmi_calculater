
import 'package:flutter/material.dart';
import 'modules/home_views.dart';

void main(){
  runApp(BmiCalculator());
}
class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViews(),
    );
  }
}
