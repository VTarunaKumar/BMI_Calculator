import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key? key,
  // }) : super(key: key);
  ReusableCard({required this.colour, required this.cardChild}) {}
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 200,
      width: 170,
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
