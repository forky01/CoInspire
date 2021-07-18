import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'AppInfo.dart';
import 'main.dart';
import 'ExplorePage.dart';
import 'InterestPage.dart';

class MatchPage extends StatefulWidget {
  MatchPage({Key key}) : super(key: key);

  @override
  _MatchPageState createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Container(
          color: Color(0xFFefefefef),
          child: Container(
            margin: EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.home_outlined,
                            size: 50, color: Color(0xFF288ec8)),
                        Text("Home",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.create_outlined,
                            size: 50, color: Color(0xFF288ec8)),
                        Text("Edit Interests",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InterestPage()));
                      },
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.location_searching,
                            size: 48, color: Color(0xFF288ec8)),
                        Text("Explore Industry",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExplorePage()));
                      },
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.person_search_outlined,
                            size: 50, color: Color(0xFF288ec8)),
                        Text("Mentor Match",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MatchPage()));
                      },
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.chat_outlined,
                            size: 50, color: Color(0xFF288ec8)),
                        Text("FAQ",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {
                        //Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => FaqPage()));
                      },
                    ),
                  ),
                ]),
                Column(children: [
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.help_outline,
                            size: 50, color: Color(0xFF288ec8)),
                        Text("Help",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.settings_outlined,
                            size: 50, color: Color(0xFF288ec8)),
                        Text("Settings",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Row(children: [
                        Icon(Icons.person_outline,
                            size: 50, color: Color(0xFF288ec8)),
                        Text("Profile",
                            style: TextStyle(fontSize: 25, color: Colors.black))
                      ]),
                      onPressed: () {},
                    ),
                  ),
                ]),
              ],
            ),
          ),
        )),
        appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 100,
            backgroundColor: Colors.black,
            elevation: 15,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25))),
            title: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset("Assets/logo2.png", height: 40),
            )),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Meet Your Matched Mentor!",
                    style: TextStyle(fontSize: 30)),
              ),
              Icon(Icons.person, size: 220),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue[600], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 370,
                //color: Colors.pink,
                child: Container(
                    child: Column(
                  children: [
                    Text("Name", style: TextStyle(fontSize: 25)),
                    Text("Company", style: TextStyle(fontSize: 25)),
                  ],
                )),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue[600], width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 370,
                height: 200,
                child: Text("Bio", style: TextStyle(fontSize: 25)),
              ),
              Container(
                width: 370,
                height: 60,
                child: ElevatedButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.blue[600]),
                  child: Text("Chat"),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
  }
}
