import 'package:flutter/material.dart';
import 'dart:math';

class StoryCircle extends StatelessWidget {
  final List<Color?> colors = [Colors.red, Colors.amber, Colors.blue[100], Colors.deepOrangeAccent];
  final String name;

  StoryCircle(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final randColor = colors[random.nextInt(colors.length)];

    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(2), // Outer padding
              decoration: BoxDecoration(
                color: randColor, // Background color
                shape: BoxShape.circle,
              ),
              child: Container(
                padding: const EdgeInsets.all(2), // Middle padding
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(73, 140, 240, 1.0), // Middle circle color
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: const EdgeInsets.all(2), // Inner padding
                  decoration: BoxDecoration(
                    color: randColor, // Inner circle color
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 24.5,
                    backgroundColor: randColor,
                    child: const Icon(Icons.person, size: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(name),
      ],
    );
  }
}