import 'package:flutter/material.dart';
import 'package:day2/core/theme/app_colors.dart';

class CalendarDetail extends StatelessWidget {
  const CalendarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.bgCalendarIcon,
            ),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.calendar_today_rounded,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "23 - 30 May",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
