import 'package:flutter/material.dart';
import 'constants.dart';

class CircularSoftButtonWidget extends StatelessWidget{

  const CircularSoftButtonWidget({
    Key key,
    this.radius,
    @required this.icon,
  }) : super(key: key);

  final double radius;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius/2),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: backgroundColor,
              boxShadow: [
                BoxShadow(color: shadowColor, offset: Offset(8,6), blurRadius: 12),
                BoxShadow(color: Colors.white, offset: Offset(-8,-6), blurRadius: 12),
              ],
            ),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}


