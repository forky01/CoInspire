import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'AppInfo.dart';
import 'main.dart';
import 'MatchPage.dart';
import 'InterestPage.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  var interest = [
    "UI Designer",
    "UX Designer",
    "Back-end dev",
    "Front-end dev",
    "Data Scientist",
    "Enterprise Architect",
    "Product Manager",
    "Devops Engineer"
  ];
  var search = "";
  var colour = Color(0xFF288ec8);

  List<ElevatedButton> genInterestButtons(var interests) {
    List<ElevatedButton> buttonList = <ElevatedButton>[];
    for (var i = 0; i < interests.length; i++) {
      switch (interests[i]) {
        case "UI Designer":
          {
            colour =
                AppInfo().job["UI Designer"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "UX Designer":
          {
            colour =
                AppInfo().job["UX Designer"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Back-end dev":
          {
            colour =
                AppInfo().job["Back-end dev"] ? Colors.grey : Color(0xFF288ec8);
          }
          break;
        case "Front-end dev":
          {
            colour = AppInfo().job["Front-end dev"]
                ? Colors.grey
                : Color(0xFF288ec8);
          }
          break;
        case "Data Scientist":
          {
            colour = AppInfo().job["Data Scientist"]
                ? Colors.grey
                : Color(0xFF288ec8);
          }
          break;
        case "Enterprise Architect":
          {
            colour = AppInfo().job["Enterprise Architect"]
                ? Colors.grey
                : Color(0xFF288ec8);
          }
          break;
        case "Product Manager":
          {
            colour = AppInfo().job["Product Manager"]
                ? Colors.grey
                : Color(0xFF288ec8);
          }
          break;
        case "Devops Engineer":
          {
            colour = AppInfo().job["Devops Engineer"]
                ? Colors.grey
                : Color(0xFF288ec8);
          }
          break;
      }
      buttonList.add(ElevatedButton(
          onPressed: () {
            switch (interests[i]) {
              case "UI Designer":
                {
                  AppInfo().job["UI Designer"] = !AppInfo().job["UI Designer"];
                }
                break;
              case "UX Designer":
                {
                  AppInfo().job["UX Designer"] = !AppInfo().job["UX Designer"];
                }
                break;
              case "Back-end dev":
                {
                  AppInfo().job["Back-end dev"] =
                      !AppInfo().job["Back-end dev"];
                }
                break;
              case "Front-end dev":
                {
                  AppInfo().job["Front-end dev"] =
                      !AppInfo().job["Front-end dev"];
                }
                break;
              case "Data Scientist":
                {
                  AppInfo().job["Data Scientist"] =
                      !AppInfo().job["Data Scientist"];
                }
                break;
              case "Enterprise Architect":
                {
                  AppInfo().job["Enterprise Architect"] =
                      !AppInfo().job["Enterprise Architect"];
                }
                break;
              case "Product Manager":
                {
                  AppInfo().job["Product Manager"] =
                      !AppInfo().job["Product Manager"];
                }
                break;
              case "Devops Engineer":
                {
                  AppInfo().job["Devops Engineer"] =
                      !AppInfo().job["Devops Engineer"];
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
                      //MaterialPageRoute(builder: (context) => FaqPage()));
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
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20),
            child: Text("Tech Jobs",
                style: TextStyle(
                  fontSize: 30,
                )),
          ),
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
                  hintText: 'Search jobs',
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
    );
  }
}
