//5.42
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        //color: Colors.red,
        color: Color(0xFFFFF9D9EB),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset('assets/firstPage.png'),
            Positioned(
              bottom: 140,
              child: MaterialButton(
                  color: Color(0xFFFFF36A7F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    ));
                  },
                  child: Text('Sign In', style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //as keyboard when pops up breaks the screen
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Image.asset('assets/groupStudy.png'),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    hintText: 'Email',),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                color: Color(0xFFFFFF905F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minWidth: MediaQuery.of(context).size.width - 60,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ));
                },
                child: Text('Sign In', style: TextStyle(fontSize: 18,color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 9,),
              Text('Forgot Password',style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text('Sign in with',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                    color: Colors.blue,),
                    onPressed: null,
                    ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter,
                    color: Colors.lightBlueAccent,),
                    onPressed: null,
                    ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.googlePlus,
                      color: Colors.red,
                    ),
                    onPressed: null,
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
