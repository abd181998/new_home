import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {

  Widget about(){
    return  Container(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                      height: 60,
                      child: Row(
                        children: [
                          Icon(Icons.phone,size: 25,),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Text('Mobile',style: TextStyle(color: Colors.blue.shade900,fontSize: 20),),
                              Text('+20 1114737152',style: TextStyle(fontSize: 15),)
                            ],
                          )
                        ],
                      )),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                      height: 60,
                      child: Row(
                        children: [
                          Icon(Icons.email,size: 25,),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Text('Email',style: TextStyle(color: Colors.blue.shade900,fontSize: 20),),
                              Text('hassan@yahoo.com',style: TextStyle(fontSize: 15),)
                            ],
                          )
                        ],
                      )),

                ],
              ),
            ),


          ],
        )
    );
  }

  Widget Post(){
    return Container(
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
            child: Text('fhgd'),
          )
        ],
      ),
    );
  }

  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height /2,
              child: ListView(
                children: [
                  SizedBox(height: 70,),
                  Center(
                    child: Container(
                      width:130 ,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          image: DecorationImage(
                              image: AssetImage('images/2.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Hassan Mohamed',style: TextStyle (fontSize: 30, color: Colors.white),),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Number of Post',style: TextStyle (fontSize: 15, color: Colors.white),),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('10',style: TextStyle (fontSize: 20, color: Colors.white),),
                    ),
                  ),

                ],
              ),
              color: Colors.indigo[900],
            ),
            Container(
              color: Colors.indigo[900],
              child: TabBar(
                unselectedLabelColor: Colors.white60,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    text:'About' ,
                  ),
                  Tab(
                    text: 'posts',
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  about(),
                  Post(),],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),


    );
  }
}