import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

const labelTextStyle = TextStyle(
    fontSize: 18,
    color: Color(0xFF8d8e98),);

class content extends StatelessWidget {
  content({required this.icon ,required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(icon, size: 80,),
        SizedBox(height: 15,),
        Text(label, style:labelTextStyle ,)
      ],
    );
  }
}
