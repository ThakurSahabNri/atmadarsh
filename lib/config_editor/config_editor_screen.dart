import 'package:flutter/material.dart';
import 'package:atmadarsh/config_editor/links_editor.dart';
import 'package:atmadarsh/data/models/portfolio_config.dart';
import 'package:atmadarsh/config_editor/profile_editor.dart';
import 'package:atmadarsh/config_editor/project_editor.dart';
import 'package:atmadarsh/config_editor/skill_editor.dart';
import 'package:atmadarsh/config_editor/theme_editor.dart';
import 'package:atmadarsh/config_editor/theme_editor.dart';
import 'package:atmadarsh/config_editor/section_editor.dart';

class ConfigEditorScreen extends StatefulWidget {
  final PortfolioConfig initialConfig;

  const ConfigEditorScreen({super.key, required this.initialConfig});

  @override
  State<ConfigEditorScreen> createState() => _ConfigEditorScreenState();
}

class _ConfigEditorScreenState extends State<ConfigEditorScreen> {
  late PortfolioConfig config;
  String selectedMenu = "profile";

  final List<Map<String, String>> menuItems = [
    {"id": "profile", "name": "Profile"},
    {"id": "skills", "name": "Skills"},
    {"id": "projects", "name": "Projects"},
    {"id": "theme", "name": "Theme"},
    {"id": "links", "name": "Links"},
    {"id": "sections", "name": "Sections"},
    {"id": "export", "name": "Export JSON"},
  ];

  @override
  void initState() {
    super.initState();
    config = widget.initialConfig;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio Config Editor"),
        backgroundColor: Colors.black87,
      ),

      body: Row(
        children: [
          // ---------------------- Sidebar ----------------------
          Container(
            width: 240,
            color: Colors.grey.shade200,
            child: ListView(
              children: menuItems.map((item) {
                final isSelected = item["id"] == selectedMenu;

                return InkWell(
                  onTap: () {
                    setState(() => selectedMenu = item["id"]!);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    color: isSelected ? Colors.black87 : Colors.transparent,
                    child: Text(
                      item["name"]!,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black87,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          // ---------------------- Editor Area ----------------------
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              color: Colors.white,
              child: _buildEditor(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditor() {
    switch (selectedMenu) {
      case "profile":
        return ProfileEditor(
          // profile: config.profile,
          // onChanged: (updated) => setState(() => config.profile = updated),
        );

      case "skills":
        return SkillEditor(
          // skills: config.skills,
          // onChanged: (updated) => setState(() => config.skills = updated),
        );

      case "projects":
        return ProjectEditor(
          // projects: config.projects,
          // onChanged: (updated) => setState(() => config.projects = updated),
        );

      case "theme":
        return ThemeEditor(
          // theme: config.theme,
          // onChanged: (updated) => setState(() => config.theme = updated),
        );

      case "links":
        return LinksEditor(
          // links: config.contactLinks,
          // onChanged: (updated) => setState(() => config.contactLinks = updated),
        );

      case "sections":
        return SectionEditor(
          // sections: config.sections,
          // onChanged: (updated) => setState(() => config.sections = updated),
        );
      //
      // case "export":
      //   return JSONExportEditor(config: config);

      default:
        return const SizedBox();
    }
  }
}
