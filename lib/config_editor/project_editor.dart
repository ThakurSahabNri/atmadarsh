import 'package:flutter/material.dart';

class ProjectEditor extends StatefulWidget {

  const ProjectEditor({super.key});

  @override
  State<ProjectEditor> createState() => _ProjectEditor();
}

class _ProjectEditor extends State<ProjectEditor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ProjectEditor Editor"),
          backgroundColor: Colors.black87,
        ),

        body:Container(
          child: Text("ProjectEditor"),
        )

    );
  }

}
