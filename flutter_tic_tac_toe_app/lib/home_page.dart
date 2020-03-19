import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var fontStyle1 = GoogleFonts.pressStart2P(
  textStyle: TextStyle(color: Colors.white),
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int playerOneScore = 0, playerTwoScore = 0;
  int boxFilled = 0;
  List<dynamic> selected = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Player X',style: fontStyle1,),
                      ),
                      Text(playerOneScore.toString(),style: fontStyle1,),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Player O',style: fontStyle1,),
                      ),
                      Text(playerTwoScore.toString(),style: fontStyle1,),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
                itemCount: 9,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _tapped(index);
                    },
                    onDoubleTap: () {
                      _doubleTapped(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[700]),
                      ),
                      child: Center(
                        child: Text(
                          selected[index],
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: Center(
              child: Container(
                child: Text('Tic Tac Toe', style: fontStyle1,),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      if(selected[index] == ''){
        boxFilled ++;
        selected[index] = 'o';
        _checkWinner();
      }
    });
  }

  void _doubleTapped(int index) {
    setState(() {
      if(selected[index] == '') {
        boxFilled ++;
        selected[index] = 'x';
        _checkWinner();
      }
    });
  }

  void _checkWinner() {
    if (selected[0] == selected[1] &&
        selected[1] == selected[2] &&
        selected[0] != '') _showInDialog(selected[0]);
    else if (selected[0] == selected[4] &&
        selected[4] == selected[8] &&
        selected[0] != '') _showInDialog(selected[0]);
    else if (selected[0] == selected[3] &&
        selected[3] == selected[6] &&
        selected[0] != '') _showInDialog(selected[0]);
    else if (selected[1] == selected[4] &&
        selected[4] == selected[7] &&
        selected[1] != '') _showInDialog(selected[1]);
    else if (selected[2] == selected[5] &&
        selected[5] == selected[8] &&
        selected[2] != '') _showInDialog(selected[2]);
    else if (selected[2] == selected[4] &&
        selected[4] == selected[6] &&
        selected[2] != '') _showInDialog(selected[2]);
    else if (selected[3] == selected[4] &&
        selected[4] == selected[5] &&
        selected[3] != '') _showInDialog(selected[3]);
    else if (selected[6] == selected[7] &&
        selected[7] == selected[8] &&
        selected[6] != '') _showInDialog(selected[6]);
    if(boxFilled==9)_drawDialog();
  }

  void _showInDialog(String winner) {
    showDialog(
        //so that without tapping play again button player can't go back to previous screen
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: <Widget>[
              Text('Winner is Player ' + winner.toUpperCase(),),
              FlatButton(
                child: Text('Play Again'),
                onPressed: () {
                  _clearBoard();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
    if (winner == 'x')
      playerOneScore++;
    else
      playerTwoScore++;
  }

  void _drawDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            actions: <Widget>[
              Text('Draw'),
              FlatButton(
                child: Text('Play Again'),
                onPressed: () {
                  _clearBoard();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }

  void _clearBoard() {
    setState(() {
      for(int i=0; i<9; i++) selected[i] = '';
      boxFilled = 0;
    });

  }
}
