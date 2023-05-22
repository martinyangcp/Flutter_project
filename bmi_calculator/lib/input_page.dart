import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon.dart';
import 'package:bmi_calculator/result.dart';

const bottomContainerHeight = 80.0;
const widgetcolor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female;
}

double user_height = 100;
double user_weight = 50;
double user_age = 20;

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  late Gender selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        maleCardColor = widgetcolor;
                        femaleCardColor = inactiveCardColor;
                        selectedgender = Gender.male;
                      });
                    },
                    color: maleCardColor,
                    cardChild: content(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        maleCardColor = inactiveCardColor;
                        femaleCardColor = widgetcolor;
                        selectedgender = Gender.female;
                      });
                    },
                    color: femaleCardColor,
                    cardChild: content(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onpress: () {},
              color: widgetcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "HEIGHT",
                      style: labelTextStyle,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          user_height.toInt().toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    min: 100.0,
                    max: 200.0,
                    activeColor: bottomContainerColor,
                    inactiveColor: Colors.white12,
                    value: user_height,
                    onChanged: (value) {
                      setState(() {
                        user_height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onpress: () {},
                    color: widgetcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            "WEIGHT",
                            style: labelTextStyle,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                user_weight.toInt().toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Slider(
                          min: 50.0,
                          max: 100.0,
                          activeColor: bottomContainerColor,
                          inactiveColor: Colors.white12,
                          value: user_weight,
                          onChanged: (value) {
                            setState(() {
                              user_weight = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onpress: () {},
                    color: widgetcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            "AGE",
                            style: labelTextStyle,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                user_age.toInt().toString(),
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Slider(
                          min: 0.0,
                          max: 100.0,
                          activeColor: bottomContainerColor,
                          inactiveColor: Colors.white12,
                          value: user_age,
                          onChanged: (value) {
                            setState(() {
                              user_age = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder:(context){
                      return result();
                    }, ),
              );
            },
            child: Container(
              color: bottomContainerColor,
              child: Center(
                child: Text("CALCULATE YOUR BMI",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
