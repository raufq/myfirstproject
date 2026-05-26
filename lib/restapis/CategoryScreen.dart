

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstproject/restapis/postsapi/login.dart';
import 'package:myfirstproject/restapis/postsapi/sign_up.dart';
import 'package:myfirstproject/restapis/postsapi/upload_image.dart';

import 'getsapi/home_screen1.dart';
import 'getsapi/home_screen2.dart';
import 'getsapi/home_screen3.dart';
import 'getsapi/home_screen4.dart';
import 'getsapi/home_screen5.dart';
import 'getsapi/image_text_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePageScreen()),
                  );
                },
                child: Text("Image with text")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen1()),
                  );
                },
                child: Text("Get Api Screen1")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen2()),
                  );
                },
                child: Text("Get Api Screen2")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen3()),
                  );
                },
                child: Text("Get Api Screen3")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen4()),
                  );
                },
                child: Text("Get Api Screen4")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UploadImageScreen()),
                  );
                },
                child: Text("Upload Image Screen")),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}