import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class Metricard extends StatelessWidget {
  final String titulo;
  final String valor;
  final String descripcion;

  const Metricard({
    super.key,
    required this.titulo,
    required this.valor,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 125,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.xl),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titulo, style: AppTextStyles.metricLabel),
          const SizedBox(height: AppSpacing.sm),
          Text(valor, style: AppTextStyles.metricValue),
          Text(descripcion, style: AppTextStyles.metricDescription),
        ],
      ),
    );
  }
}
