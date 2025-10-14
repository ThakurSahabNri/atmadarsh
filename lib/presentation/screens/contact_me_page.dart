import 'package:flutter/material.dart';
class ContactMePage extends StatelessWidget{
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text(
        "Contact Me:\nEmail: manoj@example.com",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }
}