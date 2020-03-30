import 'package:flutter/material.dart';

class SliderTileWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  final TextStyle titleStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  final TextStyle descriptionStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w300);

  SliderTileWidget({this.title, this.description, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Image.asset(
            imagePath,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            title,
            style: titleStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: descriptionStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
