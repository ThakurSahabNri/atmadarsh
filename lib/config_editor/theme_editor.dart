import 'package:flutter/material.dart';

class ThemeEditor extends StatefulWidget {

  const ThemeEditor({super.key});

  @override
  State<ThemeEditor> createState() => _ThemeEditor();
}

class _ThemeEditor extends State<ThemeEditor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ThemeEditor Editor"),
          backgroundColor: Colors.black87,
        ),

        body:Container(
          child: Text("ThemeEditor"),
        )

    );
  }

}
