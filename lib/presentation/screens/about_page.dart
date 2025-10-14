import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget{
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text(
        "Hi, I'm Manoj Thakur 👋\nFlutter Developer & UI Engineer",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }
}