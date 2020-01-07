import 'package:flutter/material.dart';
import 'package:lab2/screen/thirtPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString ="SecondPage";
  var textUser = new TextEditingController();
  var textLastname = new TextEditingController();
  var textPass = new TextEditingController();
  var textAge = new TextEditingController();
  var textEmail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title: TextField(
            controller: textUser,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Username'
            ),
          ),
        ),

        ListTile(
          title: TextField(
            controller: textLastname,
            decoration: InputDecoration(
              labelText: 'LastName',
              hintText: 'lastname'
            ),
          ),
        ),

        ListTile(
          title: TextField(
            controller: textEmail,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'abc@gmail.com'
            ),
          ),
        ),

        ListTile(
          title: TextField(
            controller: textPass,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'more 8 charactor'
            ),
          ),
        ),

        ListTile(
          title: TextField(
            controller: textAge,
            decoration: InputDecoration(
              labelText: 'Age',
              hintText: 'Age'
            ),
          ),
        ),

        ListTile(
          title: RaisedButton(
            child: Text('Next'),
            onPressed: (){
              var route = MaterialPageRoute(
                builder: (BuildContext context) => ThirtPage(
                  valueFromSecondPage: textUser.text,
                  valueFromSecondPage1: textLastname.text,
                  valueFromSecondPage2: textPass.text,
                  valueFromSecondPage3: textAge.text,
                  valueFromSecondPage4: textEmail.text,
                )
              );
              Navigator.of(context).push(route);
            },
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: widget,
      // body: Container(
      //   child: Center(
      //     child: Image.asset('images/tr.png'),
      //   ),
      // ),
    );
  }
}