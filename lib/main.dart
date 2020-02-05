import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banker UI',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade800 ,
        secondaryHeaderColor: Colors.blueAccent.shade200 ,
        cardColor: Colors.white ,
        canvasColor: Colors.blue.shade100,
      ),
      home :  HomePage() ,
    );
  }
}
