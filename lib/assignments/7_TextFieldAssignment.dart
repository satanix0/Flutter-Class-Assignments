// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TextFieldAssignment());
}

List<String> myTags = [];

class TextFieldAssignment extends StatefulWidget {
  const TextFieldAssignment({super.key});

  @override
  State<TextFieldAssignment> createState() => _TextFieldAssignmentState();
}

class _TextFieldAssignmentState extends State<TextFieldAssignment> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("TextField Assignment"),
          ),
          body: Container(
            child: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  onChanged: (updatedtext) {
                    myTags = getMyTags(updatedtext);
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      ...getMyContainers(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> getMyTags(String text) {
  for (var i = 0; i < text.length; i++) {
    if (i > text.length - 1) {
      break;
    }
    if (text[i] == '#') {
      String newEntry = '';
      while (text[i] != ' ' && text[i] != '.' && i != text.length - 1) {
        if (text[i] == '#') {
          i++;
          continue;
        }
        newEntry = newEntry + text[i];
        i++;
      }
      myTags.add(newEntry);
    }
  }
  return myTags;
}

List<Container> getMyContainers() {
  return myTags
      .map((e) => Container(
            color: Colors.blue,
            child: Text(e),
          ))
      .toList();
}
