import 'package:flutter/material.dart';

const bottomContainerColor=0xFFEB1555;
const bottomConatinerHeight=80.0;
const activeConatinerColor=0xFF1D1E33;

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
                Expanded(child: ReusableCards(Color(activeConatinerColor))),
              Expanded(child: ReusableCards(Color(activeConatinerColor))),
            ],
          ),
          ),
          Expanded(child: ReusableCards(Color(activeConatinerColor))),

          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCards(Color(activeConatinerColor))),
              Expanded(child: ReusableCards(Color(activeConatinerColor))),
            ],
          ),
          ),
          Container(
            height: bottomConatinerHeight,
            color: Color(bottomContainerColor),
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
          ),

        ],
      ),
    );
  }
}

class ReusableCards extends StatelessWidget {

  ReusableCards(this.colour);
  final Color colour;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}

