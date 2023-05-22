import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/result_from.dart';
const bottomContainerHeight = 80.0;
const widgetcolor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);


class ResultPage extends StatefulWidget {
  const ResultPage({super.key});
  @override
  State<ResultPage> createState() => _ResultPageState();
}
class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Your Result')),
      ),
      body: Column(
        children: [
          Expanded(
            child: resultfrom()
          ),
          GestureDetector(
            child: Container(
              color: bottomContainerColor,
              child: Center(
                child: Text("RE-CALCULATE",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
            onTap:(){
              Navigator.pop(context);
              },
          )
        ],
      ),
    );
  }
}
