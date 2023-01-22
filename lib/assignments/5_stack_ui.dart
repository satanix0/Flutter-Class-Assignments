// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackUI extends StatelessWidget {
  const StackUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Sign Up Screen'),
            backgroundColor: Colors.blueGrey.shade900,
          ),
          body: Container(
            width: double.infinity,
            color: Colors.grey[250],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Sign Up with Mobile",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 7, 28, 7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.8),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "44646464984",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Positioned(
                      right: -15,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
