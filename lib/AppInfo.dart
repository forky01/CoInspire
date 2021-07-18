class AppInfo{
  static final AppInfo _singleton = new AppInfo._internal();
  factory AppInfo(){
    return _singleton;
  }
  AppInfo._internal();


  String _username = "";
  String _email = "";
  String _password = "";

  String get username{
    return _username;
  }
  void set username(txt) {
    _username = txt;
  }
  String get email{
    return _email;
  }
  void set email(txt) {
    _email = txt;
  }
  String get password{
    return _password;
  }
  void set password(txt) {
    _password = txt;
  }

  Map<String, bool> interest = {
      "Music":false,
     "Law": false,
     "Tech": false,
     "Sport": false,
     "Science": false,
     "History": false,
     "Art" :false,
     "Fashion": false,
     "Languages": false,
     "Cooking": false,
     "Literature": false
  };
  Map<String, bool> job = {
    "UI Designer":false,
    "UX Designer": false,
    "Back-end dev": false,
    "Front-end dev": false,
    "Data Scientist": false,
    "Enterprise Architect": false,
    "Product Manager" :false,
    "Devops Engineer": false,
  };
}