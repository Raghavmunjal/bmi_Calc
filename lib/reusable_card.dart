import 'package:flutter/material.dart';


class ReusableCards extends StatelessWidget {

  ReusableCards({required this.colour,required this.cardChild,required this.onPress});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)
        ),
        child: cardChild,
      ),
      onTap: onPress,
    );
  }
}

