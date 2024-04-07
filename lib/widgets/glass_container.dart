import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:progmob_1/constants/app_colors.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15.0,
          sigmaY: 15.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.base100.withOpacity(0.6),
            border: Border.all(
              width: 2.0,
              color: AppColors.base300,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
