import 'package:collapsable_sidebar_and_naviagation/theme.dart';
import 'package:flutter/material.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;

  const CollapsingListTile({Key key, this.title, this.icon}) : super(key: key);
  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Icon(widget.icon, color: Colors.white30, size: 30,),
          SizedBox(width: 10.0,),
          Text(widget.title, style: listTileDefaultTextStyle,),
        ],
      ),
    );
  }
}