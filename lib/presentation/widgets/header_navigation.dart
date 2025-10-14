import 'package:flutter/material.dart';

class HeaderNavigation extends StatelessWidget implements PreferredSizeWidget{
  final Function(String) onNavigate;
  const HeaderNavigation({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context){
    return AppBar(
      title: const Text(
        "Atmadarsh",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 1,
      actions: [
        _navItem("About Me", onNavigate),
        _navItem("Skills", onNavigate),
        _navItem("Portfolio", onNavigate),
        _navItem("CONTACT ME", onNavigate),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget _navItem(String title, Function(String) onTap){
    return  TextButton(
      onPressed: () => onTap(title),
      child: Text(
        title,
        style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
      ),
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(60);
}