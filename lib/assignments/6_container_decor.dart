// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContainerDecorDemo extends StatelessWidget {
  const ContainerDecorDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Decorations'),
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 151, 186, 225),
            child: Center(
              child: Container(
                // child: Image.asset(
                //   'images/random.jpg',
                //   fit: BoxFit.cover,
                // ),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  // can also use this to insert a image in the Container.
                  image: DecorationImage(
                      image: AssetImage(
                        'images/containerDecor.jpg',
                      ),
                      fit: BoxFit.fitWidth),
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                  border: Border.all(width: 7.0, color: Colors.black),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 51, color: Colors.grey, spreadRadius: 21)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'COFFEE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.0,
                      decoration: TextDecoration.overline,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Image.asset('images/random.jpg'),
// decoration: BoxDecoration(
//               border: Border.all(color:Colors.green.shade400,width: 10,),
//               borderRadius: BorderRadius.circular(25),
