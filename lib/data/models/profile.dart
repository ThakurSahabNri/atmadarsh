import 'package:flutter/material.dart';

class ProfileModel {
  String name;
  String? headline;
  String? bio;
  String? description;
  String? avatar;

  // Additional optional fields you may use later
  String? location;
  String? email;
  String? phone;
  String? resumeUrl;
  List<String>? socialLinks; // list of URLs

  ProfileModel({
    required this.name,
    this.headline,
    this.bio,
    this.description,
    this.avatar,
    this.location,
    this.email,
    this.phone,
    this.resumeUrl,
    this.socialLinks,
  });

  // --------- FROM JSON ----------
  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      name: json["name"] ?? "",
      headline: json["headline"],
      bio: json["bio"],
      description: json["description"],
      avatar: json["avatar"],
      location: json["location"],
      email: json["email"],
      phone: json["phone"],
      resumeUrl: json["resumeUrl"],
      socialLinks: json["socialLinks"] != null
          ? List<String>.from(json["socialLinks"])
          : [],
    );
  }

  // --------- TO JSON ----------
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "headline": headline,
      "bio": bio,
      "description": description,
      "avatar": avatar,
      "location": location,
      "email": email,
      "phone": phone,
      "resumeUrl": resumeUrl,
      "socialLinks": socialLinks,
    };
  }
}
