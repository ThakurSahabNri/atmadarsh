import 'package:flutter/material.dart';

/// Generic Section model to support any section type dynamically.
/// Example: profile, skills, projects, contact, achievements, blogs, etc.

@immutable
class SectionModel {
  final String id;                // unique key like "profile", "skills", "projects"
  final bool enabled;             // whether this section should be shown
  final int order;                // order in which this section appears in UI
  final Map<String, dynamic>? data; // dynamic payload for each section type

  const SectionModel({
    required this.id,
    required this.enabled,
    required this.order,
    this.data,
  });

  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
      id: json['id'] ?? '',
      enabled: json['enabled'] ?? true,
      order: json['order'] ?? 999,
      data: json['data'] != null ? Map<String, dynamic>.from(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'enabled': enabled,
      'order': order,
      'data': data,
    };
  }

  /// Helper for copying and updating values
  SectionModel copyWith({
    String? id,
    bool? enabled,
    int? order,
    Map<String, dynamic>? data,
  }) {
    return SectionModel(
      id: id ?? this.id,
      enabled: enabled ?? this.enabled,
      order: order ?? this.order,
      data: data ?? this.data,
    );
  }
}
