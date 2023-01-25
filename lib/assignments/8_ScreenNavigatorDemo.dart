// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Screen1(),
    ),
  );
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              onTap: () => {
                print("On Screen 1"),
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(),
                  ),
                ),
              },
              child: Container(
                child: Text("Screen 1"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen3(),
                ),
              );
            },
            child: Container(
              child: Text("Screen 2"),
            ),
          ),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen4(),
                ),
              );
            },
            child: Container(
              child: Text("Screen 3"),
            ),
          ),
        ),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen5(),
                ),
              );
            },
            child: Container(
              child: Text("Screen 4"),
            ),
          ),
        ),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                ),
              );
            },
            child: Container(
              child: Text("Screen 5"),
            ),
          ),
        ),
      ),
    );
  }
}
