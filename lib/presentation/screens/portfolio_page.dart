import 'package:flutter/material.dart';
class PortfolioPage extends StatelessWidget{
  const PortfolioPage({super.key});
  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text(
          "Portfolio Projects Coming Soon 🚀",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }
}