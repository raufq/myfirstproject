

import 'package:flutter/material.dart';
import 'package:myfirstproject/Journal_home.dart';

class MyHomeScreen extends StatelessWidget{
  const MyHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Center(child:Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Hello world"),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const JournalHome())
          );
        },
        child: const Text('Journal app'),
      ),
      ElevatedButton(
        onPressed: () {
          print('Button Pressed!');
        },
        child: const Text('Recipy app'),
      )
    ],))

    );
  }

}