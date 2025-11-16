import 'package:flutter/material.dart';

class SkillEditor extends StatefulWidget {

  const SkillEditor({super.key});

  @override
  State<SkillEditor> createState() => _SkillEditor();
}

class _SkillEditor extends State<SkillEditor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SkillEditor Editor"),
          backgroundColor: Colors.black87,
        ),

        body:Container(
          child: Text("SkillEditor"),
        )

    );
  }

}
