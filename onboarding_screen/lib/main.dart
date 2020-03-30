import 'dart:io'; // |> platform
import 'package:flutter/material.dart';
import 'data.dart';
import 'package:onboarding_screen/slider_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<Home> {
  int count = 0;
  // NEW TOPIC |> PageController
  PageController pageController = new PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: PageView.builder(
            controller: pageController,
            // NEW TOPIC |> onPageChanged
            onPageChanged: (val) {
              setState(() {
                count = val;
              });
            },
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return SliderTileWidget(
                title: dataList[index].title,
                imagePath: dataList[index].imagePath,
                description: dataList[index].description,
              );
            },
          ),
        ),
      ),
      // NEW TOPIC |> bottomSheet
      bottomSheet: count < dataList.length - 1
          ? Container(
              // NEW TOPIC |> Platform
              height: Platform.isIOS ? 44 : 40,
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(dataList.length - 1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < dataList.length; i++)
                        i == count ? dot(true) : dot(false)
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      pageController.animateToPage(count + 1,
                          duration: Duration(milliseconds: 200),
                          curve: Curves.linear);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              height: Platform.isIOS ? 44 : 40,
              color: Colors.blue,
              child: Text(
                'Get Started',
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              alignment: Alignment.center,
            ),
    );
  }
}

// ~~> widget type method can be written outside of class
Widget dot(bool currentPage) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2),
    child: Container(
      width: currentPage == true ? 13 : 10,
      height: currentPage == true ? 13 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // ~~> condition can be given during initialization
        color: currentPage == true ? Colors.redAccent : Colors.grey,
      ),
    ),
  );
}
