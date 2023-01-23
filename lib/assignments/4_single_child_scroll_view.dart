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
            color: Colors.grey.shade300,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Scorll Effect in Horizontal
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...getContainerForRow(),
                      ],
                    ),
                  ),
                  // triple dot(...) allows the column to have more CHildren than returned by the function.
                  ...getContainerForCol(),
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

// A list of Colors.
List<Color> myContainerColors = [
  Colors.amber,
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.pink,
  Colors.indigo,
  Colors.teal,
  Colors.yellow,
  Colors.orange,
];

// This Function Returns the List of Containers as Children of the Column to the main
List<Widget> getContainerForCol() {
  // List of Containers to be returned
  List<Widget> ContainersForCol = [];

  for (var i = 0; i < myContainerColors.length; i++) {
    ContainersForCol.add(
      Container(
        height: 200,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        color: myContainerColors[i],
        child: Center(
          child: Text("${i + 1}"),
        ),
      ),
    );
  }
  return ContainersForCol;
}

// Similar Function fo the row.
List<Widget> getContainerForRow() {
  // List of Containers to be returned
  List<Widget> ContainersForRow = [];

  for (var i = 0; i < myContainerColors.length; i++) {
    ContainersForRow.add(
      Container(
        height: 200,
        width: 200,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        color: myContainerColors[i],
        child: Center(
          child: Text("${i + 1}"),
        ),
      ),
    );
  }

  return ContainersForRow;
}
