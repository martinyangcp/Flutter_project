import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, required this.cardChild, required this.onpress});
  final Color color;
  final Widget cardChild;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      ),
    );
  }
}
