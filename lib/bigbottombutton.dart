import 'package:flutter/material.dart';
import 'consts.dart';
class BigBottomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  BigBottomButton({required this.text,this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 22.0,
              ),
            )),
        color: kBottomCardColor,
        width: double.infinity,
        height: kBottomCardheight,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
      ),
    );
  }
}
