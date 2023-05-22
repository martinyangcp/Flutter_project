import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

final user_bmi = user_weight / (user_height * user_height) * 10000;

class resultfrom extends StatefulWidget {
  const resultfrom({Key? key}) : super(key: key);

  @override
  State<resultfrom> createState() => _resultfrom_State();
}

class _resultfrom_State extends State<resultfrom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(25),
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff1d1e33)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OBESITY',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              user_bmi.toInt().toString(),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Seek guidance from a healthcare professional or registered dietitian to create a personalized weight loss plan that includes a balanced diet and calorie restriction.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}