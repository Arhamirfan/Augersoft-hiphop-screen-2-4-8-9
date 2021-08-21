import 'package:augersoft_screens/Screens/Screen2.dart';
import 'package:augersoft_screens/Screens/Screen4.dart';
import 'package:augersoft_screens/Screens/Screen8.dart';
import 'package:augersoft_screens/Screens/Screen9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Augersoft',
      initialRoute: Screen2.id,
      routes: {
        Screen2.id: (context) => Screen2(),
        Screen4.id: (context) => Screen4(),
        Screen8.id: (context) => Screen8(),
        Screen9.id: (context) => Screen9(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
