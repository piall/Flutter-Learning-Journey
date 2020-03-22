import 'package:flutter/material.dart';

class RoundedDotWidget extends StatelessWidget {
  const RoundedDotWidget({
    Key key,
    @required this.givenWidth,
    @required this.givenColor,
  }) : super(key: key);

  final double givenWidth;
  final Color givenColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      margin: EdgeInsets.only(left: 4),
      width: givenWidth,
      decoration: BoxDecoration(
        color: givenColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
