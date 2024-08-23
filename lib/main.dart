import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/plus_button.dart';
import 'package:flutter_app/widgets/story_circle.dart';

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

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                StoryCircle('My Status'),
                const Positioned(
                  top: 40,
                  right: 0,
                  child: PlusButton(), // Add the PlusButton widget
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: StoryCircle('user')
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


