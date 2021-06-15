import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;
const activeContainerColor = Color(0xFF1D1E33);
const inactiveContainerColor=Color(0xFF111328);


enum GenderType{Male,Female,TransGender}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderType selectedGender=GenderType.TransGender;

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
                  child: ReusableCards(
                    onPress: () {
                      print('Male');
                      setState(() {
                        selectedGender = GenderType.Male;
                      });
                    },
                    colour: selectedGender==GenderType.Male ? activeContainerColor : inactiveContainerColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCards(
                    onPress: (){
                      print('Male');
                      setState(() {
                        selectedGender = GenderType.Female;
                      });
                    },
                    colour: selectedGender==GenderType.Female ? activeContainerColor : inactiveContainerColor ,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
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
