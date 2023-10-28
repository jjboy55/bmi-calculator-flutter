import 'package:flutter/material.dart';
import 'consts.dart';


class VariableProperty extends StatelessWidget {
  final IconData? icon;
  final String? text;
  VariableProperty({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon!,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          text!,
          style: kTextStyle,
        ),
      ],
    );
  }
}
