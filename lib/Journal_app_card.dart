


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JournalAppCard extends StatelessWidget{
  const JournalAppCard({super.key});
  @override
  Widget build(BuildContext context) {
     return Card(
         margin: const EdgeInsets.all(10),
         elevation: 5,
         shadowColor: Colors.grey,
         child: Padding(padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
       Text("Title"),
       SizedBox.fromSize(size: Size.fromHeight(10)),
       Text("details"),
       SizedBox.fromSize(size: Size.fromHeight(10)),
       Text("date")
     ],)));
  }

}
