import 'package:flutter/material.dart';
import 'AppInfo.dart';
import 'InterestPage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username = new TextEditingController();
  var email = new TextEditingController();
  var password = new TextEditingController();
  var prof = false;
  @override
  Widget build(BuildContext context) {
    username.text = AppInfo().username;
    email.text = AppInfo().email;
    password.text = AppInfo().password;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 170,
          backgroundColor: Colors.black,
          elevation: 15,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          title: Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Image.asset("Assets/logo.png", height: 160),
          )),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Welcome", style: TextStyle(fontSize: 40)),
                Text("Create Your Account",
                    style: TextStyle(
                        fontFamily: '',
                        fontSize: 20,
                        color: Color(0xFF14b2ed))),
              ],
            ),
          ),
          Container(
            height: 350,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 350,
                    height: 60,
                    child: new TextField(
                      controller: username,
                      textInputAction: TextInputAction
                          .done, //when the enter key is pressed the keyboard collapses
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: Icon(Icons.person),
                        ),
                        hintText: 'Username',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                      onChanged: (String newValue) {
                        AppInfo().username = newValue;
                      },
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 60,
                    child: new TextField(
                      controller: email,
                      textInputAction: TextInputAction
                          .done, //when the enter key is pressed the keyboard collapses
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: Icon(Icons.email),
                        ),
                        hintText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                      onChanged: (String newValue) {
                        AppInfo().email = newValue;
                      },
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 60,
                    child: new TextField(
                      controller: password,
                      obscureText: true,
                      textInputAction: TextInputAction
                          .done, //when the enter key is pressed the keyboard collapses
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          icon: Icon(Icons.lock),
                        ),
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                      onChanged: (String newValue) {
                        AppInfo().password = newValue;
                      },
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ]),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width) / 2,
                        child: ElevatedButton(
                          child: Text("Industry Professional"),
                          style: TextButton.styleFrom(
                            backgroundColor:
                                prof ? Colors.blue[700] : Colors.grey,
                          ),
                          onPressed: () {
                            prof = true;
                            setState(() {});
                          },
                        )),
                    Container(
                        width: (MediaQuery.of(context).size.width) / 2,
                        child: ElevatedButton(
                          child: Text("Mentee/Other"),
                          style: TextButton.styleFrom(
                            backgroundColor:
                                !prof ? Colors.blue[700] : Colors.grey,
                          ),
                          onPressed: () {
                            prof = false;
                            setState(() {});
                          },
                        )),
                  ])),
          Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Container(
                    width: 300,
                    child: ElevatedButton(
                      child: Text("Sign up"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        if (AppInfo().username != "" &&
                            AppInfo().email != "" &&
                            AppInfo().password != "") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InterestPage()));
                        }
                      },
                    )),
              ])),
        ],
      ),
    );
  }
}
