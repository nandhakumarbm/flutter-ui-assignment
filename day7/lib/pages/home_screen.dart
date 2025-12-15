import '/widgets/car_progress_bar.dart';

import '/core/theme/app_colors.dart';
import '/widgets/calendar_detail.dart';
import '/widgets/top_bar.dart';
import '/widgets/trip_summary.dart';
import '/widgets/view_history.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'ROAD: TRIP',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Munich to Paris',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const CalendarDetail(),
              const SizedBox(height: 20),

              Stack(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/Images/car1.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 35,
                        child: Container(
                          color: AppColors.background.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),

                  Positioned(
                    bottom: 3,
                    left: 0,
                    right: 0,
                    child: TripProgressBar(progress: 0.7),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1, // 1 px border
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TripSummary(),
              ),
              const SizedBox(height: 10),
              const ViewHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
