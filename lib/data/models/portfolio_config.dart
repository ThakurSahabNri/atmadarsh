import 'package:atmadarsh/data/models/link.dart';
import 'package:atmadarsh/data/models/profile.dart';
import 'package:atmadarsh/data/models/project.dart';
import 'package:atmadarsh/data/models/skill.dart';
import 'package:atmadarsh/data/models/theme.dart';
import 'package:atmadarsh/data/models/section.dart';

class PortfolioConfig {
  final ProfileModel? profile;
  final List<SkillModel> skills;
  final List<ProjectModel> projects;
  final List<LinkModel> contactLinks;
  final ThemeConfigModel? theme;

  /// Which section appears + order
  final List<SectionModel> sections;

  PortfolioConfig({
    this.profile,
    this.theme,
    this.sections = const [],
    this.skills = const [],
    this.projects = const [],
    this.contactLinks = const [],
  });

  /// ---------------------- FROM JSON ----------------------
  factory PortfolioConfig.fromJson(Map<String, dynamic> json) {
    return PortfolioConfig(
      profile: json["profile"] != null
          ? ProfileModel.fromJson(json["profile"])
          : null,

      skills: (json["skills"] as List?)
          ?.map((e) => SkillModel.fromJson(e))
          .toList()
          ?? [],

      projects: (json["projects"] as List?)
          ?.map((e) => ProjectModel.fromJson(e))
          .toList()
          ?? [],

      contactLinks: (json["contact_links"] as List?)
          ?.map((e) => LinkModel.fromJson(e))
          .toList()
          ?? [],

      theme: json["theme"] != null
          ? ThemeConfigModel.fromJson(json["theme"])
          : null,

      sections: (json["sections"] as List?)
          ?.map((e) => SectionModel.fromJson(e))
          .toList()
          ?? [],
    );
  }

  /// ---------------------- TO JSON ----------------------
  Map<String, dynamic> toJson() {
    return {
      "profile": profile?.toJson(),
      "skills": skills.map((e) => e.toJson()).toList(),
      "projects": projects.map((e) => e.toJson()).toList(),
      "contact_links": contactLinks.map((e) => e.toJson()).toList(),
      "theme": theme?.toJson(),
      "sections": sections.map((e) => e.toJson()).toList(),
    };
  }
}
