import "package:day6/core/theme/app_colors.dart";
import "package:flutter/material.dart";

class TripProgressBar extends StatelessWidget {
  final double progress;

  const TripProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _circle(Colors.black),

          Expanded(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(height: 2, color: const Color(0xFFC9C9C9)),
                FractionallySizedBox(
                  widthFactor: progress,
                  child: Container(height: 2, color: AppColors.primaryColor),
                ),
              ],
            ),
          ),

          _circle(const Color(0xFFC9C9C9)),
        ],
      ),
    );
  }

  Widget _circle(Color color) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
