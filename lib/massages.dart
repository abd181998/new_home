import 'package:flutter/material.dart';
import 'package:new_home/ads.dart';
import 'package:new_home/chat.dart';


class Chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<Chat> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[900],
        body: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [

              SizedBox(
                width: 100,
              ),
              Text(
                'Good Chat',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    //  fontFamily: 'font',
                    color: Colors.white),
              ),
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 40,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.all(10),
            height: 750,
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: 5,
                itemBuilder:(context,i){
                  return Column(
                    children: [
                      InkWell(

                        onTap: (){
                          Navigator.push(context, PageRouteBuilder(
                              transitionDuration: Duration(seconds: 1),
                              transitionsBuilder: (context,animation,animationTime,child){
                                animation=CurvedAnimation(
                                    parent: animation,curve: Curves.bounceOut
                                );
                                return ScaleTransition(scale: animation,
                                  alignment: Alignment.bottomRight,
                                  child: child,
                                );
                              },
                              pageBuilder:(context,animation,animationTime){
                                return Chatpage();
                              } ));
                        },
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/33.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(70),
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('hassan',
                                  style: TextStyle(
                                    // fontFamily: 'font',
                                      color: Colors.blue.shade900,
                                      fontSize: 25),
                                ),
                                Text('hassan',
                                  style: TextStyle(
                                    // fontFamily: 'font',
                                      color: Colors.black54,
                                      fontSize: 15),
                                ),

                              ],
                            ),
                            SizedBox(width: 100,),
                            CircleAvatar(backgroundColor: Colors.blue.shade900,
                              child: Text('2'),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(),
                      SizedBox(height: 10,),
                    ],
                  );
                } ),
          ),
        ]));
  }
}
