import 'package:day1/core/theme/app_colors.dart';
import 'package:day1/widgets/top_bar.dart';
import "package:flutter/material.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: const SafeArea(child: TopBar()),
    );
  }
}
