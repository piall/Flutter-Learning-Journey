import 'package:flutter/material.dart';
import 'profile.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimal Profile UI',
      home: Profile(),
    );
  }
}