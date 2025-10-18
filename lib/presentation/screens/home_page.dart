import 'package:flutter/material.dart';
import 'package:atmadarsh/presentation/widgets/header_navigation.dart';
import 'package:atmadarsh/presentation/screens/about_page.dart';
import 'package:atmadarsh/presentation/screens/skills_page.dart';
import 'package:atmadarsh/presentation/screens/portfolio_page.dart';
import 'package:atmadarsh/presentation/screens/contact_me_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void handleNavigation(String page) {
    setState(() {
      switch (page) {
        case "About Me":
          selectedIndex = 0;
          break;
        case "Skills":
          selectedIndex = 1;
          break;
        case "Portfolio":
          selectedIndex = 2;
          break;
        case "CONTACT ME":
          selectedIndex = 3;
          break;
      }
    });
  }

  Widget _getSelectedPage() {
    switch (selectedIndex) {
      case 0:
        return const AboutPage();
      case 1:
        return const SkillsPage();
      case 2:
        return const PortfolioPage();
      case 3:
        return const ContactMePage();
      default:
        return const AboutPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavigation(
        selectedIndex: selectedIndex,
        onNavigate: handleNavigation,
      ),
      body: _getSelectedPage(),
    );
  }
}
