import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'ui_components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'variable_component.dart';
import 'consts.dart';
import 'bodyParameters.dart';
import 'bigbottombutton.dart';
import 'calculatorbrain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 120;
  int weight = 80;
  int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CardUi(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardChild: VariableProperty(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                  color: (selectedGender == Gender.male)
                      ? kCardColor
                      : kInactiveCardColor,
                ),
              ),
              Expanded(
                child: CardUi(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: VariableProperty(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                  color: (selectedGender == Gender.female)
                      ? kCardColor
                      : kInactiveCardColor,
                ),
              )
            ],
          )),
          Expanded(
            child: CardUi(
              color: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: kBottomCardColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: Color(0x30eb1555),
                      activeTrackColor: Colors.white,
                      trackHeight: 2,
                      inactiveTrackColor: kSliderColor,
                    ),
                    child: Slider(
                        min: 0.0,
                        max: 200.0,
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CardUi(
                  color: kCardColor,
                  cardChild: WeightCard(
                    bodyParameterText: 'WEIGHT',
                    bodyParameter: weight,
                    plusOnPressed: () {
                      setState(() {
                        weight++;
                      });
                    },
                    minusOnPressed: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: CardUi(
                  color: kCardColor,
                  cardChild: WeightCard(
                      bodyParameterText: 'AGE',
                      bodyParameter: age,
                      plusOnPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      minusOnPressed: () {
                        setState(() {
                          age--;
                        });
                      }),
                ),
              ),
            ],
          )),
          BigBottomButton(
            onTap: () {
              CalculatorBrain calculatorBrain = CalculatorBrain(weight: weight, height: height,);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(suggestion: calculatorBrain.getSuggestion(),
                      result: calculatorBrain.getResult(),
                      bmiResult: calculatorBrain.bmiCalculator(),),
                  ));
            },
            text: 'CALCULATE YOUR BMI',
          ),
        ],
      ),
    );
  }
}

