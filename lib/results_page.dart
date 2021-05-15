import 'package:flutter/material.dart';
import 'constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.advice});
  final String bmiResult;
  final String resultText;
  final String advice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text('Your Result', style: kNumStyle),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kActiveCardColour,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(resultText, style: kresultStyle),
                    Text(
                      bmiResult,
                      style: kBmiStyle,
                    ),
                    Text(
                      advice,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              color: kBottomContainerColour,
              width: double.infinity,
              height: kBottomContainerHight.toDouble(),
              margin: EdgeInsets.only(top: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
