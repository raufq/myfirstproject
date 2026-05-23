import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstproject/data/JournalFormModel.dart';
import 'package:myfirstproject/data/data.dart';

class Journalbottomsheetform extends StatefulWidget{
  final Function(Journalformmodel) onSave;
  const Journalbottomsheetform({required this.onSave,super.key});
  @override
  State<Journalbottomsheetform> createState() => _JournalbottomsheetformState();
}

class _JournalbottomsheetformState extends State<Journalbottomsheetform> {

  TextEditingController _titleEditingController = TextEditingController();
  TextEditingController _detailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(40),child: Container(
      child: Column(
        children: [TextField(
          controller: _titleEditingController,
          decoration: InputDecoration(
            hintText: "Title",border: OutlineInputBorder()
          ),
        ),
          const SizedBox(height: 10),
          TextField(
            controller: _detailEditingController,
            decoration: InputDecoration(
            hintText: "details",border: OutlineInputBorder()
        )),
        const SizedBox(height: 10),
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("cancel")),ElevatedButton(onPressed: (){
            Navigator.pop(context);
            Journalformmodel journalformmodel = Journalformmodel(id: DateTime.now().toString(), title: _titleEditingController.text, detail: _detailEditingController.text, date: DateTime.now().toString());
            widget.onSave(journalformmodel);
            }, child: Text("save"))],
        )]
      ),
    ));
  }
}