import 'package:flutter/material.dart';
import 'package:flutter_app/story_bar.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(73, 140, 240, 1.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(73, 140, 240, 1.0),
          leading: const Padding(
            padding: EdgeInsets.all(3),
            child: Icon(Icons.search_rounded,
            color: Colors.white),
          )
        ),
        body: const StoryBar(),
      ),
    );
  }
}

