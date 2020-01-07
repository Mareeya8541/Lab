import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String valueFromHome;
  final String valueFromHome1;
  LoginPage({Key key,this.valueFromHome,this.valueFromHome1}):super(key:key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String titleString = "LoginPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text("Username : ${widget.valueFromHome} \nPassword :${widget.valueFromHome1}"),
    );
  }
}