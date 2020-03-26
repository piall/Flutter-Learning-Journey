import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'character.dart';
import 'style_guide.dart';
import 'character_detail_screen.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, PageRouteBuilder(
          transitionDuration : const Duration(milliseconds: 350),
          pageBuilder: (context, _, __) => CharacterDetailScreen(character: character,))
        );
      },
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CharacterCardBackgroundClipper(),
              child: Container(
                height: screenHeight * 0.55,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: character.colors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -1),
            child: Image.asset(character.imagePath,height: screenHeight*.6,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 39.0, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(character.name, style: AppTheme.heading,),
                Text('Tap to Read More', style: AppTheme.subHeading,),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(
        size.width + 1, size.height - 1, size.width, size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(
        size.width - 1, 0, size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}


