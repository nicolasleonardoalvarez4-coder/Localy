import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';
import 'package:localy/features/products/domain/producto.dart';

class Productitem extends StatelessWidget {
  final Producto producto;

  const Productitem({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Text(producto.icono, style: const TextStyle(fontSize: 22)),
          const SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(producto.nombre, style: AppTextStyles.cardTitle),
                Text(producto.detalle, style: AppTextStyles.cardSubtitle),
              ],
            ),
          ),
          Text(producto.indicador, style: AppTextStyles.rank),
        ],
      ),
    );
  }
}
