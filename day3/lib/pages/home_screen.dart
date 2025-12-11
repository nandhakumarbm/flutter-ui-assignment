import 'package:day3/core/theme/app_colors.dart';
import 'package:day3/widgets/calendar_detail.dart';
import 'package:day3/widgets/top_bar.dart';
import 'package:day3/widgets/trip_summary.dart';
import 'package:day3/widgets/view_history.dart';
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Munich to Paris',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const CalendarDetail(),
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/Images/car.jpg', // make sure this path & case match your assets folder
                  width: double.infinity,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 20),
              const TripSummary(),
              const SizedBox(height: 20),
              const ViewHistory(),
            ],
          ),
        ),
      ),
    );
  }
}
