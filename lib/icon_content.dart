import 'package:flutter/material.dart';
import 'constant.dart';


class CardChild extends StatelessWidget {
  CardChild({this.gender, this.icon});
  final String gender;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
