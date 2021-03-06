import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lab2/screen/secondPage.dart';
import 'package:lab2/screen/loginPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String titleString ="Home";
  var textEditController = new TextEditingController();
  var textEditController1 = new TextEditingController();


  Widget showText() {
    return Text(
      'HAPPY NEW YEAR 2020',
      style: TextStyle(
          fontSize: 28.0, 
          fontWeight: FontWeight.bold, 
          color: Colors.limeAccent[400], fontFamily: 'item'),
    );
  }

  Widget showName() {
    return Text(
      'Mareeya Madsalaeman',
      style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.limeAccent[400],
          fontFamily: 'item'),
    );
  }
  Widget showNumber(){
    return Text(
      'Age 21 years old' ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.orange),
    );
  }

  Widget showlogo(){
    return Image.asset('images/bell.png' ,width: 200,);
  }

  Widget pass(){
    return Text('\n\n\n\n\n\n');
  }

  Widget emailText(){
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController,
        decoration: InputDecoration(
          icon: Icon(Icons.email,
          size: 35.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Username',
          hintText: 'your@email.com'
        ),
      ),
    );
  }

  Widget passText(){
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController1,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key,
          size : 30.0,
          color: Colors.limeAccent[400],
          ),
          labelText: 'Password',
          hintText: 'more 8 charactor'
        ),
      ),
    );
  }

  Widget buttonlogin(){
    return Container(
      width: 250,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.account_circle ,
        size: 30.0,
        ),
        label: Text('Login'),
        onPressed: (){
          var route = MaterialPageRoute(
            builder: (BuildContext context) => LoginPage(
              valueFromHome: textEditController.text,
              valueFromHome1: textEditController1.text,
            )
          );
          Navigator.of(context).push(route);
        },
      ),
    );
  }
  
  Widget buttonRegis(){
    return Container(
      width: 250,
      child: RaisedButton.icon(
        color: Colors.limeAccent[400],
        icon: Icon(Icons.recent_actors ,
        size: 30.0,
        ),
        label: Text('Registor'),
        onPressed: (){
          var route = MaterialPageRoute(
            builder: (BuildContext context) => SecondPage()
          );
          Navigator.of(context).push(route);
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/lzzy.jpeg'))),
          child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showlogo(),
              showText(),
              showName(),
              emailText(),
              passText(),
              buttonlogin(),
              buttonRegis(),
              
              //showNumber()
            ],
          ),
        ),
        ),
      ),
    );
  }
}
