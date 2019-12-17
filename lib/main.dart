import 'package:flutter/material.dart';
import 'package:lab2/screen/home.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'test',
//       theme: ThemeData(
//         primarySwatch: Colors.yellow
//       ),
//       home : Scaffold(
//         backgroundColor: Colors.yellow[800],
//         appBar: AppBar(
//           title: Text('Welcome to RPC'),
//         ),
//         body: Center(
//           child: Text('Hello my lab2 '),
//         ),
//       )
      
      
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lime
      ),
      title: 'test1',
      //home: Text('DATA'),
      home: Home(),
      
    );
  }
}