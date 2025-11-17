class ThemeConfigModel {
  /// ------------ COLORS -------------
  final String primaryColor;
  final String secondaryColor;
  final String backgroundColor;
  final String textColor;
  final String accentColor;

  /// ------------ TYPOGRAPHY ----------
  final String fontFamily;
  final double titleFontSize;
  final double subtitleFontSize;
  final double bodyFontSize;
  final double smallTextSize;

  /// Per-text-type colors
  final String titleColor;
  final String subtitleColor;
  final String bodyTextColor;

  /// ------------ BUTTONS -------------
  final String buttonColor;
  final String buttonTextColor;
  final String buttonHoverColor;
  final double buttonRadius;
  final double buttonFontSize;

  /// ------------ CARDS ---------------
  final String cardBackgroundColor;
  final String cardBorderColor;
  final double cardBorderRadius;
  final double cardElevation;

  /// ------------ LAYOUT --------------
  final double sectionSpacing;
  final double sectionTitleSize;
  final String sectionTitleColor;
  final double sectionPadding;

  /// Light/Dark Mode
  final bool isDarkMode;

  /// Page layout style
  final String layoutType; // horizontal, vertical, grid, compact, etc.

  /// ------------ SHADOWS -------------
  final double shadowBlur;
  final double shadowSpread;
  final String shadowColor;

  /// ------------ SECTION VISIBILITY -------------
  final bool showAbout;
  final bool showSkills;
  final bool showProjects;
  final bool showContact;

  ThemeConfigModel({
    this.primaryColor = "#0A66C2",
    this.secondaryColor = "#004182",
    this.backgroundColor = "#000000",
    this.textColor = "#000000",
    this.accentColor = "#FF5722",

    this.fontFamily = "Inter",
    this.titleFontSize = 28,
    this.subtitleFontSize = 20,
    this.bodyFontSize = 16,
    this.smallTextSize = 14,

    this.titleColor = "#000000",
    this.subtitleColor = "#333333",
    this.bodyTextColor = "#444444",

    this.buttonColor = "#0A66C2",
    this.buttonTextColor = "#FFFFFF",
    this.buttonHoverColor = "#084C92",
    this.buttonRadius = 8,
    this.buttonFontSize = 16,

    this.cardBackgroundColor = "#F7F9FC",
    this.cardBorderColor = "#DDDDDD",
    this.cardBorderRadius = 12,
    this.cardElevation = 4,

    this.sectionSpacing = 32,
    this.sectionTitleSize = 24,
    this.sectionTitleColor = "#0A66C2",
    this.sectionPadding = 16,

    this.isDarkMode = false,
    this.layoutType = "scroll",

    this.shadowBlur = 10,
    this.shadowSpread = 1,
    this.shadowColor = "rgba(0,0,0,0.15)",

    this.showAbout = true,
    this.showSkills = true,
    this.showProjects = true,
    this.showContact = true,
  });

  /// ------------ FROM JSON -----------
  factory ThemeConfigModel.fromJson(Map<String, dynamic> json) {
    return ThemeConfigModel(
      primaryColor: json["primaryColor"] ?? "#0A66C2",
      secondaryColor: json["secondaryColor"] ?? "#004182",
      backgroundColor: json["backgroundColor"] ?? "#FFFFFF",
      textColor: json["textColor"] ?? "#000000",
      accentColor: json["accentColor"] ?? "#FF5722",

      fontFamily: json["fontFamily"] ?? "Inter",
      titleFontSize: (json["titleFontSize"] ?? 28).toDouble(),
      subtitleFontSize: (json["subtitleFontSize"] ?? 20).toDouble(),
      bodyFontSize: (json["bodyFontSize"] ?? 16).toDouble(),
      smallTextSize: (json["smallTextSize"] ?? 14).toDouble(),

      titleColor: json["titleColor"] ?? "#000000",
      subtitleColor: json["subtitleColor"] ?? "#333333",
      bodyTextColor: json["bodyTextColor"] ?? "#444444",

      buttonColor: json["buttonColor"] ?? "#0A66C2",
      buttonTextColor: json["buttonTextColor"] ?? "#FFFFFF",
      buttonHoverColor: json["buttonHoverColor"] ?? "#084C92",
      buttonRadius: (json["buttonRadius"] ?? 8).toDouble(),
      buttonFontSize: (json["buttonFontSize"] ?? 16).toDouble(),

      cardBackgroundColor: json["cardBackgroundColor"] ?? "#F7F9FC",
      cardBorderColor: json["cardBorderColor"] ?? "#DDDDDD",
      cardBorderRadius: (json["cardBorderRadius"] ?? 12).toDouble(),
      cardElevation: (json["cardElevation"] ?? 4).toDouble(),

      sectionSpacing: (json["sectionSpacing"] ?? 32).toDouble(),
      sectionTitleSize: (json["sectionTitleSize"] ?? 24).toDouble(),
      sectionTitleColor: json["sectionTitleColor"] ?? "#0A66C2",
      sectionPadding: (json["sectionPadding"] ?? 16).toDouble(),

      isDarkMode: json["isDarkMode"] ?? false,
      layoutType: json["layoutType"] ?? "scroll",

      shadowBlur: (json["shadowBlur"] ?? 10).toDouble(),
      shadowSpread: (json["shadowSpread"] ?? 1).toDouble(),
      shadowColor: json["shadowColor"] ?? "rgba(0,0,0,0.15)",

      showAbout: json["showAbout"] ?? true,
      showSkills: json["showSkills"] ?? true,
      showProjects: json["showProjects"] ?? true,
      showContact: json["showContact"] ?? true,
    );
  }

  /// ------------ TO JSON -------------
  Map<String, dynamic> toJson() {
    return {
      "primaryColor": primaryColor,
      "secondaryColor": secondaryColor,
      "backgroundColor": backgroundColor,
      "textColor": textColor,
      "accentColor": accentColor,

      "fontFamily": fontFamily,
      "titleFontSize": titleFontSize,
      "subtitleFontSize": subtitleFontSize,
      "bodyFontSize": bodyFontSize,
      "smallTextSize": smallTextSize,

      "titleColor": titleColor,
      "subtitleColor": subtitleColor,
      "bodyTextColor": bodyTextColor,

      "buttonColor": buttonColor,
      "buttonTextColor": buttonTextColor,
      "buttonHoverColor": buttonHoverColor,
      "buttonRadius": buttonRadius,
      "buttonFontSize": buttonFontSize,

      "cardBackgroundColor": cardBackgroundColor,
      "cardBorderColor": cardBorderColor,
      "cardBorderRadius": cardBorderRadius,
      "cardElevation": cardElevation,

      "sectionSpacing": sectionSpacing,
      "sectionTitleSize": sectionTitleSize,
      "sectionTitleColor": sectionTitleColor,
      "sectionPadding": sectionPadding,

      "isDarkMode": isDarkMode,
      "layoutType": layoutType,

      "shadowBlur": shadowBlur,
      "shadowSpread": shadowSpread,
      "shadowColor": shadowColor,

      "showAbout": showAbout,
      "showSkills": showSkills,
      "showProjects": showProjects,
      "showContact": showContact,
    };
  }

  /// ------------ COPY WITH -------------
  ThemeConfigModel copyWith({
    String? primaryColor,
    String? secondaryColor,
    String? backgroundColor,
    String? textColor,
    String? accentColor,

    String? fontFamily,
    double? titleFontSize,
    double? subtitleFontSize,
    double? bodyFontSize,
    double? smallTextSize,

    String? titleColor,
    String? subtitleColor,
    String? bodyTextColor,

    String? buttonColor,
    String? buttonTextColor,
    String? buttonHoverColor,
    double? buttonRadius,
    double? buttonFontSize,

    String? cardBackgroundColor,
    String? cardBorderColor,
    double? cardBorderRadius,
    double? cardElevation,

    double? sectionSpacing,
    double? sectionTitleSize,
    String? sectionTitleColor,
    double? sectionPadding,

    bool? isDarkMode,
    String? layoutType,

    double? shadowBlur,
    double? shadowSpread,
    String? shadowColor,

    bool? showAbout,
    bool? showSkills,
    bool? showProjects,
    bool? showContact,
  }) {
    return ThemeConfigModel(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      accentColor: accentColor ?? this.accentColor,

      fontFamily: fontFamily ?? this.fontFamily,
      titleFontSize: titleFontSize ?? this.titleFontSize,
      subtitleFontSize: subtitleFontSize ?? this.subtitleFontSize,
      bodyFontSize: bodyFontSize ?? this.bodyFontSize,
      smallTextSize: smallTextSize ?? this.smallTextSize,

      titleColor: titleColor ?? this.titleColor,
      subtitleColor: subtitleColor ?? this.subtitleColor,
      bodyTextColor: bodyTextColor ?? this.bodyTextColor,

      buttonColor: buttonColor ?? this.buttonColor,
      buttonTextColor: buttonTextColor ?? this.buttonTextColor,
      buttonHoverColor: buttonHoverColor ?? this.buttonHoverColor,
      buttonRadius: buttonRadius ?? this.buttonRadius,
      buttonFontSize: buttonFontSize ?? this.buttonFontSize,

      cardBackgroundColor: cardBackgroundColor ?? this.cardBackgroundColor,
      cardBorderColor: cardBorderColor ?? this.cardBorderColor,
      cardBorderRadius: cardBorderRadius ?? this.cardBorderRadius,
      cardElevation: cardElevation ?? this.cardElevation,

      sectionSpacing: sectionSpacing ?? this.sectionSpacing,
      sectionTitleSize: sectionTitleSize ?? this.sectionTitleSize,
      sectionTitleColor: sectionTitleColor ?? this.sectionTitleColor,
      sectionPadding: sectionPadding ?? this.sectionPadding,

      isDarkMode: isDarkMode ?? this.isDarkMode,
      layoutType: layoutType ?? this.layoutType,

      shadowBlur: shadowBlur ?? this.shadowBlur,
      shadowSpread: shadowSpread ?? this.shadowSpread,
      shadowColor: shadowColor ?? this.shadowColor,

      showAbout: showAbout ?? this.showAbout,
      showSkills: showSkills ?? this.showSkills,
      showProjects: showProjects ?? this.showProjects,
      showContact: showContact ?? this.showContact,
    );
  }

}
