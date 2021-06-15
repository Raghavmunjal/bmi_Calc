import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class IconContent extends StatelessWidget {
  IconContent({required this.icon,required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80.0,),
        SizedBox(height: 15,),
        Text('$label',style: TextStyle(fontSize: 18,color: Color(0xFF8D8E98)),)
      ],
    );
  }
}

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

