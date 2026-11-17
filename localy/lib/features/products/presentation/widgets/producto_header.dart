import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';
import 'package:localy/features/products/presentation/producto_form_sheet.dart';

class Productheader extends StatelessWidget {
  const Productheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Productos', style: AppTextStyles.screenTitle),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.xl),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  useSafeArea: true,
                  context: context,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.viewInsetsOf(context).bottom,
                    ),
                    child: const FractionallySizedBox(
                      heightFactor: 0.7,
                      child: Ventanafromproduct(),
                    ),
                  ),
                );
              },
              child: const Icon(Icons.add, color: AppColors.onPrimary),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: AppSpacing.md,
              horizontal: AppSpacing.xl,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppRadius.sm)),
            ),
            labelText: 'Buscar producto',
            prefixIcon: Icon(Icons.search, size: 20),
          ),
        ),
      ],
    );
  }
}
