import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild,this.onpress});
  final Function onpress;
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onpress,
          child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}