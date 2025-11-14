class ContactLinkModel {
  /// human readable label: "GitHub", "LinkedIn"
  final String label;

  /// The actual link
  final String url;

  /// icon: asset path OR network URL OR flutter icon name
  final String? icon;

  /// Category (e.g., "social", "code", "portfolio")
  final String? type;

  ContactLinkModel({
    required this.label,
    required this.url,
    this.icon,
    this.type,
  });

  factory ContactLinkModel.fromJson(Map<String, dynamic> json) {
    return ContactLink(
      label: json["label"] ?? "",
      url: json["url"] ?? "",
      icon: json["icon"],
      type: json["type"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "label": label,
      "url": url,
      "icon": icon,
      "type": type,
    };
  }
}
