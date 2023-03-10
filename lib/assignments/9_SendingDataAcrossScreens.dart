// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Screen1(),
    ),
  );
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => {
                      log("On Screen 1"),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2(
                            srcBtn: 1,
                          ),
                        ),
                      ),
                    },
                    child: Container(
                      child: Text("Button 1"),
                    ),
                  ),
                  InkWell(
                    onTap: () => {
                      log("On Screen 1"),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2(
                            srcBtn: 2,
                          ),
                        ),
                      ),
                    },
                    child: Container(
                      child: Text("Button 2"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  final int srcBtn;
  const Screen2({super.key, required this.srcBtn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen1(),
                ),
              );
            },
            child: Text("At Screen 2 with beacuse Button $srcBtn was pressed"),
          ),
        ),
      ),
    );
  }
}

