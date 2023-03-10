import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool myThemeDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: (myThemeDark) ? ThemeData.dark() : ThemeData(),
      home: Screen_1(
        sourceButton: 1,
        changeThemeToDark: changeMyAppTheme,
        currentTheme: false,
      ),
    );
  }

  void changeMyAppTheme(bool changeToBlack) {
    setState(() {
      myThemeDark = changeToBlack;
    });
  }
}

class Screen_1 extends StatelessWidget {
  final int sourceButton;
  final bool currentTheme;
  final Function(bool) changeThemeToDark;

  const Screen_1(
      {super.key,
      required this.sourceButton,
      required this.changeThemeToDark,
      required this.currentTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Screen_2(
                        color: Colors.green,
                        changeThemeToDark: changeThemeToDark,
                        myInitialTheme: currentTheme,
                      )),
                ),
              );
            },
            child: const Text("Go to screen 2"),
          ),
        ),
      ),
    );
  }
}

class Screen_2 extends StatefulWidget {
  final Color color;
  final bool myInitialTheme;
  final Function(bool) changeThemeToDark;
  const Screen_2(
      {super.key,
      required this.color,
      required this.changeThemeToDark,
      required this.myInitialTheme});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  Color? myColor;
  bool myValue = false;

  @override
  void initState() {
    myColor = widget.color;
    myValue = widget.myInitialTheme;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Switch(
                      value: myValue,
                      onChanged: (value) {
                        setState(() {
                          myValue = value;
                        });
                        widget.changeThemeToDark(value);
                      }),
                  InkWell(
                    onTap: () {
                      print("On Screen 1");
                      Navigator.pop(context);
                    },
                    child: const Text("Go to screen 1"),
                  ),


                  
                  SizedBox(
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          FadeAnimatedText('do IT!'),
                          FadeAnimatedText('do it RIGHT!!'),
                          FadeAnimatedText('do it RIGHT NOW!!!'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

//  void changeBackground(Color color) {
//     myColor = color;
//     print(color);
//     print("Reached here");
//     setState(() {});
//   }
}
