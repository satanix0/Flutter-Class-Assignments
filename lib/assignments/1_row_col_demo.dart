import 'package:flutter/material.dart';

class ColRowDemo extends StatelessWidget {
  const ColRowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.purple[600],
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('A'),
                    Text('B'),
                    Text('C'),
                    Text('D'),
                    Text('R'),
                    Text('F'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('C1'),
                        Text('C2'),
                        Text('C3'),
                        Text('C4'),
                      ],

                    ),
                    ElevatedButton(onPressed: (){}, child: Text('Row Button'))
                  ],
                ),
              ),
              SizedBox(
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    color: Colors.black,
                    child: Center(child: Text('SEPERATOR',style: TextStyle(color: Colors.white),)),
                  ),
              ),
              Container(
                color: Colors.deepOrange[600],
                width: double.infinity,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Text('A'),
                    Text('B'),
                    Text('C'),
                    Text('D'),
                    Text('R'),
                    Text('F'),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('R1 '),
                        Text('R2 '),
                        Text('R3 '),
                        Text('R4'),
                      ],
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('Col Button'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
