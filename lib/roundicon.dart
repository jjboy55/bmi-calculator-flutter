import 'package:flutter/material.dart';
import 'consts.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPressed;

  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kIconButtonColor,
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon!),
    );
  }
}

