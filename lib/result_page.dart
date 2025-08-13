import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.bmi,
    required this.result,
    required this.interpretation,
  });

  final String bmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Text(
            'YOUR RESULT',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          result.toUpperCase(),
                          style: kLabelTextStyle.copyWith(
                            color: Colors.lightGreen,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(bmi, style: kNumberTextStyle),
                        SizedBox(height: 20.0),
                        Text(interpretation, style: kLabelTextStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kButtonColour,
              margin: EdgeInsets.only(top: 10.0),
              height: kButtonHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kLabelTextStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
