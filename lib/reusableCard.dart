import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key? key,
  // }) : super(key: key);
  ReusableCard(
      {required this.colour, required this.cardChild, required this.onPress}) {}
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        height: 200,
        width: 170,
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
