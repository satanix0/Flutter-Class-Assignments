// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SingleChildScrollDemo extends StatelessWidget {
  const SingleChildScrollDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.yellow,
            width: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...getMyWidgets(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    color: Colors.black,
                    child: Text(
                      "End of Column",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// This Function Returns the List of Containers to the main
List<Widget> getMyWidgets() {
  List<Color> myContainerColors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.indigo,
    Colors.teal,
    Colors.yellow,
  ];

  List<Widget> myResult = [];

  for (var i = 0; i < myContainerColors.length; i++) {
    myResult.add(Container(
      width: 100,
      height: 100,
      color: myContainerColors[i],
      child: Center(child: Text("${i + 1}")),
    ));
  }

  return myResult;
}
