import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';




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
                    colour: selectedGender==GenderType.Male ? kActiveContainerColor : kInactiveContainerColor,
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
                    colour: selectedGender==GenderType.Female ? kActiveContainerColor : kInactiveContainerColor ,
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
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
