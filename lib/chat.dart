import 'package:flutter/material.dart';
import 'package:new_home/chat.dart';

class Chatpage extends StatefulWidget {
  @override
  _chatpageState createState() => _chatpageState();
}

class _chatpageState extends State<Chatpage> {
  TextEditingController _controller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      bottomSheet: BottomAppBar(
        color: Colors.indigo[900],
        child: Container(
          height: 70,
          child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.mic,color: Colors.white,size: 30,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.image,color: Colors.white,size: 30,),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                    padding: EdgeInsets.only(left: 15),
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.white),
                    child: TextFormField(
                      controller: _controller,

                      style: TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        //icon: Icon(Icons.account_circle_rounded,size: 40,color:Colors.white,),
                        hintText: 'write some thing',
                      ),
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String value) {
                        return value.isEmpty ? 'please write email.' : null;
                      },
                    )
                ),
              ),
              IconButton(icon: Icon(Icons.send,color: Colors.white,), onPressed: (){})
            ],
          ),
        ),
      ),

      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10),
                  child:Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:  AssetImage('img/2.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'hassan',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      // fontFamily: 'font',
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 700,
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.all(20),

                itemCount: 10,
                itemBuilder:(context,i){
                  return  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        color:Colors.indigo[900],
                        borderRadius: BorderRadius.circular(10),
                        elevation: 6,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical:10 ,horizontal:15 ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade900,
                          ),child:Text('hi,hassan ',style: TextStyle(color: Colors.white),),),

                      ),
                      SizedBox(height: 20,),
                    ],
                  );
                } ),
          )
        ],
      ),

    );
  }
}
