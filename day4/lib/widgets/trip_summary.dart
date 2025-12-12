import 'package:flutter/material.dart';
import "/core/theme/app_colors.dart";

class TripSummary extends StatelessWidget {
  const TripSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.innerCardBg,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HeaderSection(),
          SizedBox(
            height: 20,
            width: double.infinity,
            child: Divider(color: AppColors.divider, thickness: 1.0),
          ),
          _TimeRouteSection(),
          SizedBox(height: 16),
          _TourImage(),
          SizedBox(height: 16),
          _TourDetailsSection(),
        ],
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paris',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.9),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '1200km • City',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          '\$320.0',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.9),
          ),
        ),
      ],
    );
  }
}

class _TimeRouteSection extends StatelessWidget {
  const _TimeRouteSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.hourglass_empty,
          color: Colors.green.withOpacity(0.7),
          size: 28,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Time for way',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              '4h 20min',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.9),
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Munich - Paris',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: 2),
            Text(
              '23 May - 30 May • 2025',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TourImage extends StatelessWidget {
  const _TourImage();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/Images/paris.jpg",
        width: double.infinity,
        height: 100,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.landscape, size: 40, color: Colors.grey[600]),
                const SizedBox(height: 8),
                Text(
                  'Paris Landscape',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _TourDetailsSection extends StatelessWidget {
  const _TourDetailsSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exclusive Tour',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_rounded,
                  size: 16,
                  color: Colors.black.withOpacity(0.5),
                ),
                const SizedBox(width: 6),
                Text(
                  '23 - 30 May',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Paris, France',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 4),
                Text(
                  '4.7 (43 Reviews)',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
