


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstproject/data/JournalFormModel.dart';

class JournalAppCard extends StatelessWidget{
  final Journalformmodel journalformmodel;
  const JournalAppCard({required this.journalformmodel,super.key});
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
       Text(journalformmodel.title),
       SizedBox.fromSize(size: Size.fromHeight(10)),
       Text(journalformmodel.detail),
       SizedBox.fromSize(size: Size.fromHeight(10)),
       Text(journalformmodel.date)
     ],)));
  }

}
