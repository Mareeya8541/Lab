import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showText() {
    return Text(
      'Welcome',
      style: TextStyle(
          fontSize: 50.0, 
          fontWeight: FontWeight.bold, 
          color: Colors.purple),
    );
  }

  Widget showName() {
    return Text(
      'Mareeya Madsalaeman',
      style: TextStyle(
          fontSize: 30.0,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showText(),
              showName(),
              showNumber()
            ],
          ),
        ),
      ),
    );
  }
}
