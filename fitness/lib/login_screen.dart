import 'package:fitness/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'indicator.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext loginScreenContext) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Text(
              'Practice\nevery day'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
                fontSize: 44,
              ),
            ),
            Text(
              'Share your results',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/male-fitness.jpg',
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedDotWidget(givenWidth: 12, givenColor: Colors.black54),
                RoundedDotWidget(givenWidth: 12, givenColor: Colors.black54),
                RoundedDotWidget(givenWidth: 12, givenColor: Colors.black54),
                RoundedDotWidget(givenWidth: 32, givenColor: Colors.redAccent),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            MaterialButton(
              child: Container(
                width: MediaQuery.of(loginScreenContext).size.width - 90,
                height: 35,
                padding: EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Login With Google',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  loginScreenContext,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
