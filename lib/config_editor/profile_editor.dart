import 'package:flutter/material.dart';

class ProfileEditor extends StatefulWidget {

  const ProfileEditor({super.key});

  @override
  State<ProfileEditor> createState() => _ProfileEditor();
}

class _ProfileEditor extends State<ProfileEditor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Editor"),
          backgroundColor: Colors.black87,
        ),

        body:Container(
          child: Text("ProfileEditor"),
        )

    );
  }

}
