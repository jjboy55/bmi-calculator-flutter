import 'package:flutter/material.dart';


class CardUi extends StatelessWidget {
  final Color color;
  final  Widget? cardChild;
  final VoidCallback? onPressed;
  CardUi({required this.color, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

