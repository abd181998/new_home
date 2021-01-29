import 'package:new_home/massages.dart';
import 'package:new_home/test.dart';
import 'package:new_home/viewo.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_home/chat.dart';



class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {


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
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(children: [
              IconButton(icon: Icon(Icons.menu), onPressed: (){}),
              SizedBox(width: 200,),
              Text('List of ads',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),)

            ],),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                    image: DecorationImage(
                        image: AssetImage('images/33.png'),
                        fit: BoxFit.cover
                    ),

                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 150,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Viewo()));


                        },
                        child:  Container(
                          height: 100,
                          width: 350,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('The Home',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20

                                ),)
                              ],),

                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('dar alslam',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                              ,SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('500 L.E',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                )
              ],),
            SizedBox(height: 15,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                    image: DecorationImage(
                        image: AssetImage('images/33.png'),
                        fit: BoxFit.cover
                    ),

                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 150,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Viewo()));


                        },
                        child:  Container(
                          height: 100,
                          width: 350,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('The Home',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20

                                ),)
                              ],),

                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('dar alslam',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                              ,SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('500 L.E',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                )
              ],),

            SizedBox(height: 15,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                    image: DecorationImage(
                        image: AssetImage('images/33.png'),
                        fit: BoxFit.cover
                    ),

                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 150,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Viewo()));


                        },
                        child:  Container(
                          height: 100,
                          width: 350,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('The Home',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20

                                ),)
                              ],),

                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('dar alslam',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                              ,SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('500 L.E',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                )
              ],),
            SizedBox(height: 15,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                    image: DecorationImage(
                        image: AssetImage('images/33.png'),
                        fit: BoxFit.cover
                    ),

                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 150,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Viewo()));


                        },
                        child:  Container(
                          height: 100,
                          width: 350,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('The Home',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20

                                ),)
                              ],),

                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('dar alslam',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                              ,SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('500 L.E',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                )
              ],),
            SizedBox(height: 15,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
                    image: DecorationImage(
                        image: AssetImage('images/33.png'),
                        fit: BoxFit.cover
                    ),

                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 150,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Viewo()));


                        },
                        child:  Container(
                          height: 100,
                          width: 350,
                          color: Colors.white70,
                          child: Column(
                            children: [
                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('The Home',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20

                                ),)
                              ],),

                              SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('dar alslam',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                              ,SizedBox(height: 5,),
                              Row(children: [
                                SizedBox(width: 10,),
                                Text('500 L.E',style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15

                                ),)
                              ],)

                            ],
                          ),
                        ),
                      ),
                    ],

                  ),
                )
              ],),
            SizedBox(height: 15,),

          ],),



      ),

    );
  }
}




