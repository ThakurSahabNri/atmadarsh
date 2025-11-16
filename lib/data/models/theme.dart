class ThemeConfigModel {
  /// Primary brand color
  final String primaryColor;

  /// Background color
  final String backgroundColor;

  /// Text color
  final String textColor;

  /// Accent / highlight color
  final String? accentColor;

  /// Font family (e.g., "Montserrat")
  final String? fontFamily;

  /// Global corner radius
  final double? borderRadius;

  /// Section visibility flags
  final bool showAbout;
  final bool showSkills;
  final bool showProjects;
  final bool showContact;

  /// Light/Dark Mode
  final bool isDarkMode;

  ThemeConfigModel({
    required this.primaryColor,
    required this.backgroundColor,
    required this.textColor,
    this.accentColor,
    this.fontFamily,
    this.borderRadius,
    this.showAbout = true,
    this.showSkills = true,
    this.showProjects = true,
    this.showContact = true,
    this.isDarkMode = false,
  });

  factory ThemeConfigModel.fromJson(Map<String, dynamic> json) {
    return ThemeConfigModel(
      primaryColor: json["primaryColor"] ?? "#000000",
      backgroundColor: json["backgroundColor"] ?? "#FFFFFF",
      textColor: json["textColor"] ?? "#000000",
      accentColor: json["accentColor"],
      fontFamily: json["fontFamily"],
      borderRadius:
      json["borderRadius"] != null ? json["borderRadius"].toDouble() : null,
      showAbout: json["showAbout"] ?? true,
      showSkills: json["showSkills"] ?? true,
      showProjects: json["showProjects"] ?? true,
      showContact: json["showContact"] ?? true,
      isDarkMode: json["isDarkMode"] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "primaryColor": primaryColor,
      "backgroundColor": backgroundColor,
      "textColor": textColor,
      "accentColor": accentColor,
      "fontFamily": fontFamily,
      "borderRadius": borderRadius,
      "showAbout": showAbout,
      "showSkills": showSkills,
      "showProjects": showProjects,
      "showContact": showContact,
      "isDarkMode": isDarkMode,
    };
  }
}
