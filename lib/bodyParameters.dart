import 'package:flutter/material.dart';
import 'roundicon.dart';
import 'consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class WeightCard extends StatelessWidget {
  final int bodyParameter;
  final void Function() plusOnPressed;
  final void Function() minusOnPressed;
  final String bodyParameterText;

  WeightCard(
      {required this.bodyParameter,
        required this.minusOnPressed,
        required this.plusOnPressed,
        required this.bodyParameterText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          bodyParameterText,
          style: kTextStyle,
        ),
        Text(
          bodyParameter.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: plusOnPressed,
              icon: FontAwesomeIcons.plus,
            ),
            SizedBox(
              width: 8,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: minusOnPressed,
            ),
          ],
        )
      ],
    );
  }
}
