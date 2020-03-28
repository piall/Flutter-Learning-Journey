import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'naviagation_model.dart';
import 'collapsing_list_tile.dart';

class ColapsingNavigationDrawer extends StatefulWidget {
  @override
  _ColapsingNavigationDrawerState createState() =>
      _ColapsingNavigationDrawerState();
}

class _ColapsingNavigationDrawerState extends State<ColapsingNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 250,
        color: Colors.black87,
        child: Column(children: <Widget>[
          SizedBox(height: 20,),
          CollapsingListTile(title: 'Pial', icon: Icons.person,),
          SizedBox(height: 40,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CollapsingListTile(
                  icon: navigationModelItems[index].icon,
                  title: navigationModelItems[index].title,
                );
              },
              itemCount: navigationModelItems.length,
            ),
          )
        ]),
      ),
    );
  }
}
