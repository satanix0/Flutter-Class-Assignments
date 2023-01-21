import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  const RowCol({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Column Row Assignment'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade600,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Date"), Text('Rem 1')],
                      ),
                      Text("Day 1")
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade600,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Date"), Text('Rem 2')],
                      ),
                      Text("Day 2")
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade600,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Date"), Text('Rem 3')],
                      ),
                      Text("Day 3")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
