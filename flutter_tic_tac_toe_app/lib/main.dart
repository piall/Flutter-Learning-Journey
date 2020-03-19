import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to hide the debug written banner during debugging
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          'Tic Tac Toe',
                          style: fontStyle1.copyWith(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: AvatarGlow(
                        endRadius: 140,
                        duration: Duration(seconds: 2),
                        glowColor: Colors.white,
                        repeat: true,
                        //repeatPauseDuration: Duration(seconds: 1),
                        startDelay: Duration(seconds: 1),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                style: BorderStyle.none
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Image.asset('assets/tictactoelogo.png',
                              color: Colors.white,
                              //fit: BoxFit.scaleDown,
                            ),
                            radius: 80.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        child: GestureDetector(
                          child: Center(
                            child: Text('Play Game',style: fontStyle1.copyWith(fontSize: 20),),),
                          onTap: () {
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()
                              ),
                            );
                          },
                        ),
                      )
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}


