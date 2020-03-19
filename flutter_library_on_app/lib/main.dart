import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String text1 = 'This is the app that allows you to discover and\nread ebooks and magazines.';
String text2 = 'Borrow and read free books,\naudiobooks, and magazines from\nyour library using your phone or\ntablet. It\'s easy to get.';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Hero(
                tag: 'logo',
                child: Image.asset('logo.png',height: 30,),
              ),
              SizedBox(height: 110,),
              Image.asset('img1.png'),
              SizedBox(height: 30,),
              Text('Hello',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
              SizedBox(height: 15,),
              Text(text1,textAlign: TextAlign.center,),
              SizedBox(height: 37,),
              Hero(
                tag: 'button',
                child: MaterialButton(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 110,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Hero(
                      tag: 'logo',
                      child: Image.asset('logo.png',height: 30,),
                    ),
                    Text('SKIP', style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 120,),
                Image.asset('img2.png'),
                SizedBox(height: 33,),
                Text('Meet',style: TextStyle(fontSize: 22),),
                SizedBox(height: 5,),
                Text('Librayon',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text(
                  text2,
                  style: TextStyle(height: 1.4),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Borrrow and read free ebooks',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.redAccent,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w600,
                     ),
                    ),
                    Hero(
                      tag: 'buttton',
                      child: MaterialButton(
                        minWidth: 50,
                        onPressed: () {},
                        color: Colors.black,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.chevron_right, size: 25,color: Colors.white,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}


