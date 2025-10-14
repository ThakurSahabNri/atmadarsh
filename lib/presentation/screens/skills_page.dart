import 'package:flutter/material.dart';
class SkillsPage extends StatelessWidget{
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text(
          "My Skills:\nFlutter, Dart, Firebase, UI/UX, REST APIs",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }
}