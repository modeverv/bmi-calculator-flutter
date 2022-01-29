import 'package:bmi_calculator/compornents/bottom_button.dart';
import 'package:bmi_calculator/compornents/reusable_column.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/logic/calculator.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final Calculator calc;

  ResultPage({this.calc}) {
    this.calc.calcBMI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableColumn(
                  color: kActiveColour,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        calc.getResult().toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        calc.calcBMI(),
                        style: kBMITextSyle,
                      ),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          calc.getInterpretation(),
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {})),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            titleText: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
