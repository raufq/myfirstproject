

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'JournalBottomSheetForm.dart';
import 'Journal_app_card.dart';

class JournalHome extends StatefulWidget{
  const JournalHome({super.key});
  @override
  State<JournalHome> createState() => _JournalHomeState();
}

class _JournalHomeState extends State<JournalHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Journal Home"),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return JournalAppCard();
          },
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) => Journalbottomsheetform());
          },
          child: const Icon(Icons.add),
        )

      )
    );
  }

}