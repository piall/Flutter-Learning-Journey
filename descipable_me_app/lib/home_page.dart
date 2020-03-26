import 'package:descipable_me_app/style_guide.dart';
import 'package:flutter/material.dart';
import 'character.dart';
import 'character_widget.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 19.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: screenWidth*0.04, top: screenHeight * .01),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'Descipable Me\n', style: AppTheme.display1),
                      TextSpan(text: 'Characters', style: AppTheme.display2),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  children: <Widget>[
                    for(int i=0; i<characters.length; i++) CharacterWidget(character: characters[i],)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
