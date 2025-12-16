import 'package:flutter/material.dart';

import '/core/theme/app_colors.dart';
import '/widgets/top_bar.dart';
import '/widgets/calendar_detail.dart';
import '/widgets/car_progress_bar.dart';
import '/widgets/trip_summary.dart';
import '/widgets/view_history.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity, // ✅ take full screen height
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ================= TOP =================
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: TopBar(),
              ),

              // ================= BOTTOM =================
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    shrinkWrap: true,
                    children: [
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
                          Image.asset(
                            'assets/Images/car.jpg',
                            fit: BoxFit.contain,
                          ),
                          const Positioned(
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: TripProgressBar(progress: 0.75),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                      const TripSummary(),
                      const SizedBox(height: 10),
                      const ViewHistory(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
