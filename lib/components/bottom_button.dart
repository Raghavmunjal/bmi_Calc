

import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.str,required this.onPress});

  final String str;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        child: Center(child: Text(str,style: kBottomButtonStyle,)),
      ),
    );
  }
}

