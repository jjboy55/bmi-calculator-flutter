import 'package:bmi_calculator/bigbottombutton.dart';
import 'package:bmi_calculator/consts.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  late final String bmiResult;
  late final String result;
  late final String suggestion;

  ResultPage({required this.suggestion,required this.result,required this.bmiResult});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 8),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: kBigTextStyle,
                  ))),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Expanded(
                        child: Text(
                      result,
                      style: kGreenTextStyle,
                    )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          bmiResult,
                          style: kBigNumberTextStyle,
                        )),
                    Expanded(
                      child: Text(
                        suggestion,
                        textAlign: TextAlign.center,
                        style: kSuggestionTextStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          BigBottomButton(
            text: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
