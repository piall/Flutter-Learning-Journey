import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayerui/constants.dart';
import 'package:musicplayerui/soft_control.dart';

Color backgroundColor = Color(0xFFF1F2F6);
Color shadowColor = Color(0xFFDADFF0);
Color textColor = Color(0xFF707070);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircularSoftButtonWidget(
                  radius: 25, icon: Icon(Icons.arrow_back_ios),
                ),
                Text('Music Player'),
                CircularSoftButtonWidget(
                  radius: 25, icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width),
                      boxShadow: [
                        BoxShadow(color: shadowColor, offset: Offset(8,6), blurRadius: 7),
                        BoxShadow(color: Colors.white, offset: Offset(-8,-6), blurRadius: 12),
                      ],
                      gradient: LinearGradient(
                      colors: [shadowColor,Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    )
                  ),
                ),
                Positioned(
                  top: 10,
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/wolf.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32,),
            Text('Flutter Is Good (feat. Pial)',style: TextStyle(fontSize: 24,color: Colors.black54,fontWeight: FontWeight.w600),),
            Text('Future',style: TextStyle(fontSize: 18,color: Colors.black38,fontWeight: FontWeight.w600),),
            SizedBox(height: 32,),
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: backgroundColor,
                    boxShadow: [
                      BoxShadow(color: Colors.white, offset: Offset(-1, 3)),
                      BoxShadow(color: shadowColor, offset: Offset(1, -3)),
                    ]
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    width: MediaQuery.of(context).size.width - 120,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [seekBarLightColor,seekBarDarkColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                    ),
                  ),
                 ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 21, right: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('1:30',style: TextStyle(fontSize: 16,color: Colors.black38,fontWeight: FontWeight.w600),),
                  Text('3:42',style: TextStyle(fontSize: 16,color: Colors.black38,fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircularSoftButtonWidget(radius: 25, icon: Icon(Icons.skip_previous),),
                CircularSoftButtonWidget(radius: 37, icon: Icon(Icons.play_arrow, color: seekBarDarkColor,size: 40,),),
                CircularSoftButtonWidget(radius: 25, icon: Icon(Icons.skip_next),),
              ],
            )
          ],
        ),
      ),
    );
  }
}

