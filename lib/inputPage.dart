import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;
const activeContainerColor = Color(0xFF1D1E33);
const inactiveContainerColor=Color(0xFF111328);
Color maleColor=inactiveContainerColor;
Color femaleColor=inactiveContainerColor;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

void updateColor(int gender){
      if(gender==1){

        if(maleColor==inactiveContainerColor){
            maleColor=activeContainerColor;
            femaleColor=inactiveContainerColor;
        }else{
          maleColor=inactiveContainerColor;
        }


      }else{

        if(femaleColor==inactiveContainerColor){
          femaleColor=activeContainerColor;
          maleColor=inactiveContainerColor;
        }else{
          femaleColor=inactiveContainerColor;
        }


      }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
        shadowColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCards(
                      colour: maleColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                            updateColor(2);
                      });
                    },
                    child: ReusableCards(
                      colour: femaleColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Expanded(child: ReusableCards(colour:inactiveContainerColor,cardChild: IconCard(),)),

          Expanded(
            child: Row(
              children: [
                //Expanded(child: ReusableCards(colour:inactiveContainerColor,cardChild: IconCard(),)),
                //Expanded(child: ReusableCards(colour:inactiveContainerColor,cardChild: IconCard(),)),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            color: bottomContainerColor,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
