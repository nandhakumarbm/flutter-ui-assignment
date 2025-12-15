import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // force full width
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCircleIcon(Icons.arrow_back),
          Row(
            children: [
              _buildCircleIcon(Icons.qr_code_scanner),
              const SizedBox(width: 15),
              _buildCircleIcon(Icons.layers_outlined),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildCircleIcon(IconData icon) {
  return Container(
    width: 55,
    height: 55,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.5),
      shape: BoxShape.circle,
    ),
    child: Icon(icon, weight: 800),
  );
}
