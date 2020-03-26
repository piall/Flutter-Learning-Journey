import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'character.dart';
import 'style_guide.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;

  const CharacterDetailScreen({Key key, this.character}) : super(key: key);
  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: widget.character.colors,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 16),
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 35,
                    color: Colors.white.withOpacity((0.9)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(widget.character.imagePath, height: screenHeight*.45,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
                child: Text(widget.character.name, style: AppTheme.heading,)
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 8, 32),
                child: Text(widget.character.description, style: AppTheme.subHeading,),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
