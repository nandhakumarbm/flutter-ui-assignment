import 'package:flutter/material.dart';
import '/core/theme/app_colors.dart';

class ProgressRing extends StatelessWidget {
  final double greenValue;
  final double yellowValue;

  const ProgressRing({
    super.key,
    required this.greenValue,
    required this.yellowValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 42,
      child: CustomPaint(
        painter: _ProgressRingPainter(
          greenValue: greenValue,
          yellowValue: yellowValue,
        ),
      ),
    );
  }
}

class _ProgressRingPainter extends CustomPainter {
  final double greenValue;
  final double yellowValue;

  _ProgressRingPainter({required this.greenValue, required this.yellowValue});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.width / 2) - 1;

    final backgroundPaint = Paint()
      ..color = AppColors.background
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;

    final greenPaint = Paint()
      ..color = AppColors.progressGreen
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;

    final yellowPaint = Paint()
      ..color = AppColors.progressYellow
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;

    const startAngle = -1.5708;
    final rect = Rect.fromCircle(center: center, radius: radius);

    canvas.drawCircle(center, radius, backgroundPaint);

    canvas.drawArc(
      rect,
      startAngle,
      2 * 3.1416 * greenValue,
      false,
      greenPaint,
    );

    canvas.drawArc(
      rect,
      startAngle + (2 * 3.1416 * greenValue),
      2 * 3.1416 * yellowValue,
      false,
      yellowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _ProgressRingPainter oldDelegate) {
    return oldDelegate.greenValue != greenValue ||
        oldDelegate.yellowValue != yellowValue;
  }
}
