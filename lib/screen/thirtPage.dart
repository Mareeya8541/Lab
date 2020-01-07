import 'package:flutter/material.dart';

class ThirtPage extends StatefulWidget {
  final String valueFromSecondPage;
  ThirtPage({Key key,this.valueFromSecondPage}):super(key:key);
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
      body: Text("${widget.valueFromSecondPage}"),
    );
  }
}