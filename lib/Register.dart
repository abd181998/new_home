import 'package:new_home/ads.dart';
import 'package:new_home/bottom_bar.dart';
import 'package:new_home/main.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isHidden = true;
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(

            image: DecorationImage(
              image: AssetImage('images/5.png'),
              fit: BoxFit.cover,
            ),
          ),

          child:
          SingleChildScrollView(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 25,
                    backgroundImage: AssetImage('images/1.png'),
                  ),
                  SizedBox(width: 10,),
                  Text('Thebes Home',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 25
                  ),)

                ],),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('CREAT ACCOUNT',style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white

                  ),)

                ],),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('images/2.png',),
                          fit: BoxFit.cover,
                        ),

                      ),
                    ),

                  ],),
                  SizedBox(width: 20,),
                  Column(children: [
                    Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]

                      ),
                      child:TextField(
                          decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold
                            ),

                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,

                              ),
                              borderRadius: BorderRadius.circular(150),

                            ),
                            prefixIcon: Icon(Icons.person_outline_sharp,color:
                            Colors.indigo[900]
                              ,),


                          )


                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]

                      ),
                      child:TextField(
                          decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,

                              ),
                              borderRadius: BorderRadius.circular(100),

                            ),
                            prefixIcon: Icon(Icons.person_outline_sharp,color:
                            Colors.indigo[900]
                              ,),


                          )


                      ),

                    ),


                  ],)


                ],

              ),
              SizedBox(height: 20,),
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





              ), SizedBox(height: 15,),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[200]

                ),
                child:TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,

                        ),
                        borderRadius: BorderRadius.circular(100),

                      ),
                      prefixIcon: Icon(Icons.mail,color:
                      Colors.indigo[900]
                        ,),


                    )


                ),





              ),SizedBox(height: 15,),
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
              SizedBox(height: 40,),

              FlatButton( padding:EdgeInsets.symmetric(vertical:15, horizontal:100 ,

              ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));

                } ,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text('Register',style:TextStyle(color:Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold,) ,),
                color: Colors.white,


                //shape: StadiumBorder(),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                      child: Text('You aready have an account?',style: TextStyle(color: Colors.grey,fontSize: 17, fontWeight: FontWeight.w600),)
                  ),
                  FlatButton(
                    child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));

                    },


                  ),
                ],
              ),


            ],
          ),
          ),
        )

    );
  }
}
