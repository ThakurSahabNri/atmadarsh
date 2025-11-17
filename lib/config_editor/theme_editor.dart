import 'package:flutter/material.dart';
import 'package:atmadarsh/data/models/theme.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';

class ThemeEditor extends StatefulWidget {
  ThemeConfigModel? themeConfigModel;
   ThemeEditor({super.key,this.themeConfigModel});

  @override
  State<ThemeEditor> createState() => _ThemeEditor();
}

class _ThemeEditor extends State<ThemeEditor> {
  late ThemeConfigModel _themeConfigModel;

  @override
  void initState() {
    super.initState(); // Always call super.initState() first
    _themeConfigModel=widget.themeConfigModel ?? ThemeConfigModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Theme Editor"),
          backgroundColor: AppColors.getColor(_themeConfigModel.backgroundColor),
        ),

        body:Container(
          child: Text("ThemeEditor"),
        )

    );
  }

}
