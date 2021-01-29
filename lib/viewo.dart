import 'package:flutter/material.dart';
class Viewo extends StatefulWidget {
  @override
  _ViewoState createState() => _ViewoState();
}

class _ViewoState extends State<Viewo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Thebes Home'),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('images/33.png'),
                            fit: BoxFit.cover
                        )
                    ),

                  ),
                  SizedBox(width: 10,),
                  Container(height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('images/33.png'),
                            fit: BoxFit.cover
                        )
                    ),

                  ), SizedBox(width: 10,),
                  Container(height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('images/33.png'),
                            fit: BoxFit.cover
                        )
                    ),

                  ), SizedBox(width: 10,),
                  Container(height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage('images/33.png'),
                            fit: BoxFit.cover
                        )
                    ),

                  ),

                ],
              ),


            ),

            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 30,),
              Icon(Icons.person_outline_sharp),
              SizedBox(width: 10,),
              Text('owner :',style: TextStyle(
                  fontSize: 20
              ),),
              SizedBox(width: 50,),
              Text('Abdallah elfouly',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),)
            ],),
            SizedBox(height: 15,),
            Row(children: [
              SizedBox(width: 30,),
              Icon(Icons.access_time),
              SizedBox(width: 10,),
              Text('Duration :',style: TextStyle(
                  fontSize: 20
              ),),
              SizedBox(width: 30,),
              Text('10 months',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),)
            ],),
            SizedBox(height: 15,),
            Row(children: [
              SizedBox(width: 30,),
              Icon(Icons.shopping_bag),
              SizedBox(width: 10,),
              Text('Rent :',style: TextStyle(
                  fontSize: 20
              ),),
              SizedBox(width: 60,),
              Text('500 L.E/month',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),)
            ],),
            SizedBox(height: 15,),
            Row(children: [
              SizedBox(width: 30,),
              Icon(Icons.phone_android),
              SizedBox(width: 10,),
              Text('Phone  :',style: TextStyle(
                  fontSize: 20
              ),),
              SizedBox(width: 40,),
              Text('01141518181',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),)
            ],),
            SizedBox(height: 40,),

            FlatButton( padding:EdgeInsets.symmetric(vertical:15, horizontal:100 ,

            ),
              onPressed:(){

              } ,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text('Buy now',style:TextStyle(color:Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold,) ,),
              color: Colors.indigo[900],


              //shape: StadiumBorder(),
            ),
          ],
        ),

      ),


    );
  }
}
