import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num1 = 0, num2 = 0, result=0;
  TextEditingController first = new TextEditingController();
  TextEditingController second = new TextEditingController();
  void add(){
    setState(() {
      result = int.parse(first.text) + int.parse(second.text);
    });
  }
  void subtraction(){
    setState(() {
      result = int.parse(first.text) - int.parse(second.text);
    });
  }
  void multiplication(){
    setState(() {
      result = int.parse(first.text) * int.parse(second.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),centerTitle: true,),
      body: SafeArea(
          child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(
              '$result',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80,
                color: Colors.redAccent,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter first number",
              ),
              controller: first,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter second number",
              ),
              controller: second,
            ),
            Padding(padding: EdgeInsets.only(top: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.red[400],
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: (){
                    add();
                  },
                ),
                MaterialButton(
                  color: Colors.red[400],
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onPressed: (){
                    subtraction();
                  },
                ),
              MaterialButton(
                  color: Colors.red[400],
                  child: Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                  onPressed: (){
                    multiplication();
                  },
                ),
              ],
              ),
              Padding(padding: EdgeInsets.only(top: 20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        first.text='';
                        second.text='';
                      });
                    },
                    color: Colors.yellow[600],
                    child: Icon(
                    Icons.restore,
                    color: Colors.white,
                  ),
                  ),
                ],
              ),
          ],),
        ),
      ),
    );
  }
}