import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'constants.dart';

class PurchaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Image.asset('assets/${fitness[0]['imgPath']}'),
            Image.asset('assets/male-fitness.jpg'),
            SizedBox(height: 20),
            CustomButton(text: '\$10.00 / Month',),
            SizedBox(height: 20),
            CustomButton(text: '\$56.00 / Yearly',),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 50,
      //margin: EdgeInsets.only(left: 20, right: 20),
      //padding: EdgeInsets.all(8) ,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              letterSpacing: 2,
            ),
          ),
          MaterialButton(
              onPressed: null,
              padding: EdgeInsets.all(0),
              child: Container(
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text('Free Trial',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
