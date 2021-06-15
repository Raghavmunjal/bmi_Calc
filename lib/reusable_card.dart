import 'package:flutter/material.dart';


class ReusableCards extends StatelessWidget {

  ReusableCards({required this.colour,required this.cardChild});
  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)
      ),
      child: cardChild,
    );
  }
}

