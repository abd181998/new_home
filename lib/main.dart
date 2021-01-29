import 'package:new_home/Register.dart';
import 'package:new_home/ads.dart';
import 'package:new_home/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHidden = true;
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body:SingleChildScrollView(child:  Stack(
          children: [

            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage('images/5.png'),
                    fit: BoxFit.cover,
                  ),

                ),
                child:SingleChildScrollView(child:
                Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,

                      children: [
                        CircleAvatar(radius:50,
                          backgroundImage: AssetImage('images/1.png'),
                        ),


                      ],),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,

                      children: [
                        Text('Thebes Home',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 40
                        ),)

                      ],),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,

                      children: [
                        Text("(THE BETTER IS YET COME) ",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20
                        ),)

                      ],),
                    SizedBox(height:50,),
                    Container( height:410,
                      width:MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(60),
                            topLeft: Radius.circular(60),

                          ),
                          color: Colors.white70
                      ),
                      child: Column(children: [
                        SizedBox(height: 30,),
                        Row(children: [
                          SizedBox(width: 40,),
                          Text('LOGIN',style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,color: Colors.indigo[900]
                          ),)
                        ],),
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(children: [
                              Container(
                                height: 60,
                                width: 350,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey[200]

                                ),
                                child:TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Mobile Number',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,

                                        ),
                                        borderRadius: BorderRadius.circular(100),

                                      ),
                                      prefixIcon: Icon(Icons.phone_android,color:
                                      Colors.indigo[900]
                                        ,),


                                    )


                                ),





                              ),
                              SizedBox(height: 15,),
                              Container(
                                  height: 60,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.grey[200]

                                  ),
                                  child:TextField(
                                    obscureText: _isHidden,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                      prefixIcon: Icon(Icons.lock,color: Colors.indigo[900],),
                                      suffix: Icon(Icons.visibility_off,color:Colors.indigo[900],),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,

                                        ),
                                        borderRadius: BorderRadius.circular(100),

                                      ),
                                    ),



                                  )




                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Forget Password?',style: TextStyle(

                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16
                                  ),)

                                ],),
                              SizedBox(height: 30,),

                              FlatButton( padding:EdgeInsets.symmetric(vertical:15, horizontal:100 ,

                              ),
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
                                } ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Text('Login',style:TextStyle(color:Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold,) ,),
                                color: Colors.indigo[900],


                                //shape: StadiumBorder(),
                              ),

                            ],)
                          ],

                        ),
                        SizedBox(height:15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                                child: Text('You dont have an account?',style: TextStyle(color: Colors.black,fontSize: 17, fontWeight: FontWeight.w600),)
                            ),
                            FlatButton(
                              child: Text('Sign Up',style: TextStyle(color: Colors.indigo[900],fontSize: 20, fontWeight: FontWeight.bold),),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));


                              },


                            ),
                          ],
                        ),




                      ],),
                    ),
                  ],

                ),
                )


            )
          ],
        ),
        )



    );
  }
}
