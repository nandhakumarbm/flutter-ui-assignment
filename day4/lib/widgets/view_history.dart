import '/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ViewHistory extends StatelessWidget {
  const ViewHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        decoration: BoxDecoration(
          color: AppColors.btn,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "View History",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.9),
                letterSpacing: 0.3,
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 24,
              color: Colors.black.withOpacity(0.9),
            ),
          ],
        ),
      ),
    );
  }
}
