import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Refresh'),
              ),
              const SizedBox(
                height: 15,
              ),
              StreamBuilder(builder: (context, snapshot) {
                
              },)
            ],
          ),
        ),
      ),
    );
  }

  Future<List<String>> getFuture() async {
    await Future.delayed(const Duration(seconds: 6));
    return ['RED CROSS', 'HOMELAND', 'GREEN vALLEY'];
  }
}
