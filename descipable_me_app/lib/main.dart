import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white, // makes app bar color white
          elevation: 0, // disables black shadow of an appBar
        ),
        primaryColor: Colors.white,
        canvasColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}