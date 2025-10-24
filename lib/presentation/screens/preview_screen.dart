import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Left black background with diagonal border
          ClipPath(
            clipper: DiagonalClipper(),
            child: Container(
              color: Colors.black,
            ),
          ),

          // Right grey section with image
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              color: Colors.grey[900],
              child: Image.asset(
                'assets/images/profile.png', // your image
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Optional overlay text/content
          Positioned(
            left: 80,
            top: MediaQuery.of(context).size.height * 0.3,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I'm Manoj Thakur",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Flutter Developer | UI Enthusiast | Innovator",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Creates diagonal cut between black and grey sections
class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.5, 0);
    path.lineTo(size.width * 0.45, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
