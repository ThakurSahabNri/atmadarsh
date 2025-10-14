import 'package:flutter/material.dart';
import 'package:atmadarsh/presentation/widgets/buttons.dart';
import 'package:atmadarsh/presentation//widgets/header_navigation.dart';
import 'package:atmadarsh/presentation/screens/about_page.dart';
import 'package:atmadarsh/presentation/screens/skills_page.dart';
import 'package:atmadarsh/presentation/screens/portfolio_page.dart';
import 'package:atmadarsh/presentation/screens/contact_me_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{
   String _currentPage = "About Me";

   Widget _getPage(){
     switch(_currentPage){
       case "Skills":
         return const SkillsPage();
       case "Portfolio":
         return const PortfolioPage();
       case "CONTACT ME":
         return const ContactMePage();
       default:
         return const AboutPage();
     }
   }

   @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: HeaderNavigation(
          onNavigate: (page){
          setState(() {
            _currentPage=page;
          });
        }),
        body: _getPage(),
      );
   }
}