import 'package:flutter/material.dart';
import 'constants.dart';
import 'purchase_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext homeScreenContext) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset('assets/yoga-female.jpg'),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: fitness.length,
                    itemBuilder: (homeScreenContext, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: ListTile(
                          leading: Image.asset('assets/${fitness[index]['imgPath']}'),
                          title: Text(fitness[index]['title']),
                          subtitle: Text(fitness[index]['time']),
                          onTap: () {
                            Navigator.push(homeScreenContext,
                              MaterialPageRoute(
                                builder: (context) => PurchaseScreen(),
                              )
                            );
                          },
                        ),
                      );
                    },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}