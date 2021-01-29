import 'package:new_home/ads.dart';
import 'package:new_home/test.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'massages.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  final Ads _ads = Ads();
  final Chat _chat = Chat();


  Widget _showPage = Ads();
  Widget _pagechose(int page){
    switch (page){
      case 0:
        return _ads;
        break;
      case 1:
        return _chat;
        break;
      case 2:
        return ProfilePage();
        break;

    }


  }
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.home, size: 30,color: Colors.white,),
            Icon(Icons.message, size: 30,color: Colors.white,),
            Icon(Icons.person, size: 30,color: Colors.white,),

          ],
          color: Colors.indigo[900],
          buttonBackgroundColor: Colors.indigo[900],
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pagechose(tappedIndex);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}

