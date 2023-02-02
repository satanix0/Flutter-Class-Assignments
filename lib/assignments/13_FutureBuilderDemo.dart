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
              FutureBuilder(
                future: getFuture(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    // in case we get Expected data
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          ...(snapshot.data as List<String>)
                              .asMap()
                              .entries
                              .map(
                                (e) => Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(e.value),
                                ),
                              )
                              .toList()
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Something went wrong'),
                      );
                    }
                  }
                  return const Text('Unknown State');
                },
              ),
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
