import 'package:flutter/material.dart';

class HeaderNavigation extends StatelessWidget implements PreferredSizeWidget {
  final Function(String) onNavigate;
  final int selectedIndex;

  const HeaderNavigation({
    super.key,
    required this.onNavigate,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> pages = [
      "About Me",
      "Skills",
      "Portfolio",
      "CONTACT ME",
    ];

    return AppBar(
      title: const Text(
        "Atmadarsh",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      elevation: 1,
      centerTitle: false,
      actions: [
        for (int i = 0; i < pages.length; i++)
          _navItem(
            title: pages[i],
            isSelected: selectedIndex == i,
            onTap: () => onNavigate(pages[i]),
          ),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget _navItem({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: isSelected ? Colors.white : Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
