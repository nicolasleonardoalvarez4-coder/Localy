import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';
import 'package:localy/features/products/domain/producto.dart';

class Productocartd extends StatelessWidget {
  final Producto producto;

  const Productocartd({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            child: Text(producto.icono, style: const TextStyle(fontSize: 18)),
          ),
          const SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(producto.nombre, style: AppTextStyles.cardTitle),
                Text(
                  '${producto.categoria} + ${producto.stock} en Stock',
                  style: AppTextStyles.cardStock,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text('\$${producto.precio}', style: AppTextStyles.price),
              const SizedBox(width: AppSpacing.md),
              Column(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.primary,
                    child: const Icon(
                      Icons.add_shopping_cart,
                      color: AppColors.onPrimary,
                      size: 17,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.border,
                    child: const Icon(Icons.border_color_outlined, size: 17),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
