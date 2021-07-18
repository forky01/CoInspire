import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'AppInfo.dart';
import 'ExplorePage.dart';
import 'MatchPage.dart';
import 'InterestPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: Color(0xFFefefefef),
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(
            secondary: Colors.green,
          )),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Container(
        color: Colors.grey[400],
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MatchPage()));
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
                      // Navigator.push(context,
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
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          title: Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset("Assets/logo2.png", height: 40),
          )),
      body: Center(),
    );
  }
}
