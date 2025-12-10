import 'package:day2/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ViewHistory extends StatelessWidget {
  const ViewHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 36),
        decoration: BoxDecoration(
          color: AppColors.btn,
          borderRadius: BorderRadius.circular(50),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 8),
            Text(
              "View History",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 26, 
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
