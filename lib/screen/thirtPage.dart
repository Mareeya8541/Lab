import 'package:flutter/material.dart';

class ThirtPage extends StatefulWidget {
  final String valueFromSecondPage;
  final String valueFromSecondPage1;
  final String valueFromSecondPage2;
  final String valueFromSecondPage3;
  final String valueFromSecondPage4;
  ThirtPage({Key key,this.valueFromSecondPage,
  this.valueFromSecondPage1,
  this.valueFromSecondPage2,
  this.valueFromSecondPage3,
  this.valueFromSecondPage4}):super(key:key);
  @override
  _ThirtPageState createState() => _ThirtPageState();
}

class _ThirtPageState extends State<ThirtPage> {
  final String titleString = "ThirtPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text("Name : ${widget.valueFromSecondPage} 
      \nLastname : ${widget.valueFromSecondPage1}
      \nEmail : ${widget.valueFromSecondPage4} 
      \nPassword : ${widget.valueFromSecondPage2} 
      \nAge : ${widget.valueFromSecondPage3} years "),
    );
  }
}