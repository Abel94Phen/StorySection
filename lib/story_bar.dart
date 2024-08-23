import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/plus_button.dart';
import 'package:flutter_app/widgets/story_circle.dart';


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