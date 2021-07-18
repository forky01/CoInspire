import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'AppInfo.dart';
import 'main.dart';
import 'ExplorePage.dart';
import 'MatchPage.dart';

class InterestPage extends StatefulWidget {
  InterestPage({Key key}) : super(key: key);

  @override
  _InterestPageState createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  var interest = [
    "Music",
    "Law",
    "Tech",
    "Sport",
    "Science",
    "History",
    "Art",
    "Fashion",
    "Languages",
    "Cooking",
    "Literature"
  ];
  var search = "";
  var colour = Color(0xFF288ec8);

  List<ElevatedButton> genInterestButtons(var interests) {
    List<ElevatedButton> buttonList = <ElevatedButton>[];
    for (var i = 0; i < interests.length; i++) {
      switch (interests[i]) {
        case "Music":
          {
            colour =
                AppInfo().interest["Music"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Law":
          {
            colour =
                AppInfo().interest["Law"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Tech":
          {
            colour =
                AppInfo().interest["Tech"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Sport":
          {
            colour =
                AppInfo().interest["Sport"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Science":
          {
            colour =
                AppInfo().interest["Science"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "History":
          {
            colour =
                AppInfo().interest["History"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Art":
          {
            colour =
                AppInfo().interest["Art"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Fashion":
          {
            colour =
                AppInfo().interest["Fashion"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Languages":
          {
            colour = AppInfo().interest["Languages"]
                ? Colors.grey
                : Color(0xFF288ec8);
          }
          break;
        case "Cooking":
          {
            colour =
                AppInfo().interest["Cooking"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Literature":
          {
            colour = AppInfo().interest["Literature"]
                ? Colors.grey
                : Color(0xFF288ec8);
          }
          break;
      }
      buttonList.add(ElevatedButton(
          onPressed: () {
            switch (interests[i]) {
              case "Music":
                {
                  AppInfo().interest["Music"] = !AppInfo().interest["Music"];
                }
                break;
              case "Law":
                {
                  AppInfo().interest["Law"] = !AppInfo().interest["Law"];
                }
                break;
              case "Tech":
                {
                  AppInfo().interest["Tech"] = !AppInfo().interest["Tech"];
                }
                break;
              case "Sport":
                {
                  AppInfo().interest["Sport"] = !AppInfo().interest["Sport"];
                }
                break;
              case "Science":
                {
                  AppInfo().interest["Science"] =
                      !AppInfo().interest["Science"];
                }
                break;
              case "History":
                {
                  AppInfo().interest["History"] =
                      !AppInfo().interest["History"];
                }
                break;
              case "Art":
                {
                  AppInfo().interest["Art"] = !AppInfo().interest["Art"];
                }
                break;
              case "Fashion":
                {
                  AppInfo().interest["Fashion"] =
                      !AppInfo().interest["Fashion"];
                }
                break;
              case "Languages":
                {
                  AppInfo().interest["Languages"] =
                      !AppInfo().interest["Languages"];
                }
                break;
              case "Cooking":
                {
                  AppInfo().interest["Cooking"] =
                      !AppInfo().interest["Cooking"];
                }
                break;
              case "Literature":
                {
                  AppInfo().interest["Literature"] =
                      !AppInfo().interest["Literature"];
                }
                break;
            }
            setState(() {});
          },
          style: TextButton.styleFrom(
            backgroundColor: colour,
          ),
          child: Text(interests[i], style: TextStyle(fontSize: 15))));
    }
    return buttonList;
  }

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
            toolbarHeight: 170,
            backgroundColor: Colors.black,
            elevation: 15,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25))),
            title: Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Image.asset("Assets/logo.png", height: 160),
            )),
        body: ListView(
          children: [
            Column(children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
                child: new TextField(
                  textInputAction: TextInputAction
                      .done, //when the enter key is pressed the keyboard collapses
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.saved_search),
                    ),
                    hintText: 'Search interests',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  onChanged: (String newValue) {
                    search = newValue;
                    setState(() {});
                  },
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ]),
            Container(
                height: 450,
                child: GridView.count(
                    primary: false,
                    childAspectRatio: 1.5,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: genInterestButtons(interest
                        .where((t) =>
                            t.toLowerCase().startsWith(search.toLowerCase()))
                        .toList()))),
          ],
        ),
        bottomNavigationBar: Row(children: [
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              child: Text("Skip",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onPressed: () {
                AppInfo().interest.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExplorePage()));
              },
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff36bc9b),
              ),
              child: Text("Done",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExplorePage()));
              },
            ),
          ),
        ]));
  }
}
