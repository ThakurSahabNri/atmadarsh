class ProjectModel {
  final String title;
  final String? subtitle;
  final String? shortDescription;
  final String? longDescription;

  /// Tags for filtering (e.g., ["Flutter", "Mobile", "Design"])
  final List<String>? tags;

  /// Tech stack (e.g., ["Dart", "Firebase", "Figma"])
  final List<String>? technologies;

  /// Main image (thumbnail)
  final String? thumbnailUrl;

  /// Additional screenshots
  final List<String>? galleryImages;

  /// GitHub, Play Store, Website, etc.
  final List<ProjectLink>? links;

  /// Date range like "2023 - Present"
  final String? timeline;

  /// Highlight project
  final bool isFeatured;

  ProjectModel({
    required this.title,
    this.subtitle,
    this.shortDescription,
    this.longDescription,
    this.tags,
    this.technologies,
    this.thumbnailUrl,
    this.galleryImages,
    this.links,
    this.timeline,
    this.isFeatured = false,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return Project(
      title: json["title"] ?? "",
      subtitle: json["subtitle"],
      shortDescription: json["shortDescription"],
      longDescription: json["longDescription"],
      tags: (json["tags"] as List?)?.map((e) => e.toString()).toList(),
      technologies:
      (json["technologies"] as List?)?.map((e) => e.toString()).toList(),
      thumbnailUrl: json["thumbnailUrl"],
      galleryImages:
      (json["galleryImages"] as List?)?.map((e) => e.toString()).toList(),
      links: (json["links"] as List?)
          ?.map((e) => ProjectLink.fromJson(e))
          .toList(),
      timeline: json["timeline"],
      isFeatured: json["isFeatured"] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "subtitle": subtitle,
      "shortDescription": shortDescription,
      "longDescription": longDescription,
      "tags": tags,
      "technologies": technologies,
      "thumbnailUrl": thumbnailUrl,
      "galleryImages": galleryImages,
      "links": links?.map((e) => e.toJson()).toList(),
      "timeline": timeline,
      "isFeatured": isFeatured,
    };
  }
}
