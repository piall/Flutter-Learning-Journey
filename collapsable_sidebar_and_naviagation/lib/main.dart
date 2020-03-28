import 'package:flutter/material.dart';
import 'collapsing_navigation_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing Navigation Drawer'),),
        drawer: ColapsingNavigationDrawer(),
      ),
    );
  }
}

  