import 'package:flutter/material.dart';

class SectionEditor extends StatefulWidget {

  const SectionEditor({super.key});

  @override
  State<SectionEditor> createState() => _SectionEditor();
}

class _SectionEditor extends State<SectionEditor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SectionEditor"),
          backgroundColor: Colors.black87,
        ),

        body:Container(
          child: Text("SectionEditor"),
        )

    );
  }

}
