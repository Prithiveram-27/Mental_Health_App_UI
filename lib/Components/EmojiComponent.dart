// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class EmojiComponent extends StatelessWidget {
  final String emoji;
  const EmojiComponent({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      child: Text(
        emoji,
        style: TextStyle(fontSize: 20),
      ),
      padding: EdgeInsets.all(16),
    );
  }
}
