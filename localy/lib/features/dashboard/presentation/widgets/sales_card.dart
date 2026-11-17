import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class Salescard extends StatelessWidget {
  final double ingresos;
  final int ventas;

  const Salescard({super.key, required this.ingresos, required this.ventas});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      decoration: BoxDecoration(
        color: AppColors.dark,
        borderRadius: BorderRadius.circular(AppRadius.hero),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -40,
            top: -50,
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primarySoft,
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 15,
            child: Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryMuted,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: AppSpacing.md,
              left: AppSpacing.md,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('INGRESOS DE HOY', style: AppTextStyles.salesLabel),
                const SizedBox(height: AppSpacing.xxs),
                Text(
                  '\$${ingresos.toStringAsFixed(0)}',
                  style: AppTextStyles.salesAmount,
                ),
                const SizedBox(height: AppSpacing.lg),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.circular(AppRadius.xl),
                  ),
                  child: Text('+$ventas ventas', style: AppTextStyles.badge),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
