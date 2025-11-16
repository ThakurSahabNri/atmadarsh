import 'package:flutter/material.dart';

class LinksEditor extends StatefulWidget {

  const LinksEditor({super.key});

  @override
  State<LinksEditor> createState() => _LinksEditor();
}

class _LinksEditor extends State<LinksEditor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Link Editor"),
        backgroundColor: Colors.black87,
      ),

      body:Container(
        child: Text("LinkEditor"),
      )

    );
  }

}
