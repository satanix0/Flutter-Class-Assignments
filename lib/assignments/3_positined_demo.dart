import 'package:flutter/material.dart';

class Positioned_Demo extends StatelessWidget {
  const Positioned_Demo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            fit: StackFit.loose,
            children: [
              ...getMyWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> getMyWidgets() {
  List<Color> myContainerColors = [
    Colors.amber,
    Colors.black,
  ];

  List<Widget> myResult = [];

  for (var i = 0; i < myContainerColors.length; i++) {
    myResult.add(Container(
      child: Positioned(
        width: (i == 1) ? 10 : 100,
        height: (i == 1) ? 10 : 100,
        child: Container(
          width: 100 / (i + 1),
          height: 100 / (i + 1),
          color: myContainerColors[i],
          child: Center(
            child: Text("${i + 1}"),
          ),
        ),
      ),
    ));
  }

  return myResult;
}
