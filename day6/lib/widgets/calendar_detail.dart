import 'package:flutter/material.dart';
import '/core/theme/app_colors.dart';

class CalendarDetail extends StatelessWidget {
  const CalendarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.bgCalendarIcon,
            ),
            child: const Icon(
              Icons.calendar_month_rounded,
              size: 22,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            "23 - 30 May",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
