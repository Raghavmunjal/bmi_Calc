import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerColor=0xFFEB1555;
const bottomContainerHeight=80.0;
const activeContainerColor=0xFF1D1E33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
        shadowColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
                Expanded(child: ReusableCards(colour:Color(activeContainerColor),cardChild: IconContent(icon: FontAwesomeIcons.mars, label:'MALE'),),),
              Expanded(child: ReusableCards(colour:Color(activeContainerColor),cardChild: IconContent(icon:FontAwesomeIcons.venus,label:'FEMALE'),)),
            ],
          ),
          ),
          //Expanded(child: ReusableCards(colour:Color(activeContainerColor),cardChild: IconCard(),)),

          Expanded(child: Row(
            children: [
              //Expanded(child: ReusableCards(colour:Color(activeContainerColor),cardChild: IconCard(),)),
              //Expanded(child: ReusableCards(colour:Color(activeContainerColor),cardChild: IconCard(),)),
            ],
          ),
          ),
          Container(
            height: bottomContainerHeight,
            color: Color(bottomContainerColor),
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          ),

        ],
      ),
    );
  }
}



