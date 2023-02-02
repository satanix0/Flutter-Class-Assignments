import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '10_ToggleBtn.dart';

// in this we have used shared preferences in order to keep the previous theme intact when app is relaunched.

void main() {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool myThemeDark = false;
  bool myInitialTheme = false;

  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  Future<void> getCurrentTheme() async {
    final prefs = await SharedPreferences.getInstance();
    bool myTheme = getThemeBoolean(prefs.getInt("MyCurrentTheme"));
    myInitialTheme = myTheme;

    setState(() {
      myThemeDark = myTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme changes o dark if myThemeDark is true
      theme: (myThemeDark) ? ThemeData.dark() : ThemeData(),
      home: Screen_1(
        sourceButton: 1,
        changeThemeToDark: changeMyAppTheme,
        currentTheme: myThemeDark,
      ),
    );
  }

  bool getThemeBoolean(int? savedEntry) {
    if (savedEntry == null) {
      return false;
    } else {
      return (savedEntry == 1);
    }
  }

  Future<void> changeMyAppTheme(bool changeToBlack) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setInt("MyCurrentTheme", changeToBlack ? 1 : 0);

    // calls build
    setState(() {
      myThemeDark = changeToBlack;
    });
  }
}
