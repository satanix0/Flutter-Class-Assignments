// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StartCode extends StatelessWidget {
  const StartCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Start Code Template'),
            ),
            body: Text(
                "Your Body Goes Here..... Reo[place it with Container, Column,Row etc.")),
      ),
    );
  }
}
