import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class Actioncard extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color backgroundColor;
  final Color foregroudColor;
  final VoidCallback onTap;

  const Actioncard({
    super.key,
    required this.icon,
    required this.texto,
    required this.backgroundColor,
    required this.foregroudColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppRadius.action),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: foregroudColor, size: 20),
            const SizedBox(width: AppSpacing.sm),
            Text(
              texto,
              style: AppTextStyles.actionLabel.copyWith(color: foregroudColor),
            ),
          ],
        ),
      ),
    );
  }
}
