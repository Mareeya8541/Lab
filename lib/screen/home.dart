import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showText() {
    return Text(
      'HAPPY NEW YEAR 2020',
      style: TextStyle(
          fontSize: 28.0, 
          fontWeight: FontWeight.bold, 
          color: Colors.purple, fontFamily: 'item'),
    );
  }

  Widget showName() {
    return Text(
      'Mareeya Madsalaeman',
      style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          fontFamily: 'item'),
    );
  }
  Widget showNumber(){
    return Text(
      'Age 21 years old' ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.orange),
    );
  }

  Widget showlogo(){
    return Image.asset('images/bell.png' ,width: 150, height: 180,);
  }

  Widget pass(){
    return Text('\n\n\n\n\n\n');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/ev.jpeg'))),
          child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showlogo(),
              showText(),
              //showName(),
              //showNumber()
            ],
          ),
        ),
        ),
      ),
    );
  }
}
