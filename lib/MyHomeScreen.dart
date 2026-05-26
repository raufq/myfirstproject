

import 'package:flutter/material.dart';
import 'package:myfirstproject/Journal_home.dart';
import 'package:myfirstproject/restapis/CategoryScreen.dart';

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
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoryScreen())
          );
        },
        child: const Text('Rest Api Calls'),
      )
    ],))

    );
  }

}