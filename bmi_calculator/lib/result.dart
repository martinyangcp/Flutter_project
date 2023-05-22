import 'package:flutter/material.dart';
import 'result_page.dart';
void main() => runApp(result());

class result extends StatefulWidget {
  const result({Key? key}) : super(key: key);

  @override
  State<result> createState() => _resultState();
}
class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: ResultPage(),
    );;
  }
}

