import 'package:flutter/material.dart';

class SkillModel {
  /// The title of the skill (e.g., "Flutter", "UI/UX", "Firebase")
  final String name;

  /// Optional short description (e.g., "Cross-platform mobile development")
  final String? description;

  /// Category to group skills (e.g., "Frontend", "Backend", "Tools", "Soft Skills")
  final String? category;

  /// Skill level (beginner / intermediate / expert)
  final String? level;

  /// Skill progress percentage (0–100)
  final int? proficiency;

  /// Number of years of experience
  final double? experienceYears;

  /// Optional icon asset path (assets/icons/flutter.png)
  final String? iconAsset;

  /// Optional network icon image
  final String? iconUrl;

  /// Whether to highlight this skill (e.g., top skills)
  final bool isFeatured;

  SkillModel({
    required this.name,
    this.description,
    this.category,
    this.level,
    this.proficiency,
    this.experienceYears,
    this.iconAsset,
    this.iconUrl,
    this.isFeatured = false,
  });

  // ----------- FROM JSON -----------
  factory SkillModel.fromJson(Map<String, dynamic> json) {
    return SkillModel(
      name: json["name"] ?? "",
      description: json["description"],
      category: json["category"],
      level: json["level"],
      proficiency: json["proficiency"],
      experienceYears: (json["experienceYears"] != null)
          ? json["experienceYears"].toDouble()
          : null,
      iconAsset: json["iconAsset"],
      iconUrl: json["iconUrl"],
      isFeatured: json["isFeatured"] ?? false,
    );
  }

  // ----------- TO JSON -----------
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "description": description,
      "category": category,
      "level": level,
      "proficiency": proficiency,
      "experienceYears": experienceYears,
      "iconAsset": iconAsset,
      "iconUrl": iconUrl,
      "isFeatured": isFeatured,
    };
  }
}
