import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class Ventasscreens extends StatefulWidget {
  final VoidCallback onAgregarProducto;

  const Ventasscreens({super.key, required this.onAgregarProducto});

  @override
  State<Ventasscreens> createState() => _VentasscreensState();
}

class _VentasscreensState extends State<Ventasscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.sm),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Nueva venta', style: AppTextStyles.screenTitle),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.shopping_cart_outlined,
                        size: 60,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      const Text(
                        'Carrito Vacio',
                        style: AppTextStyles.emptyTitle,
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      const Text(
                        'Agrega productos para comprar',
                        style: AppTextStyles.emptySubtitle,
                      ),
                      const SizedBox(height: AppSpacing.md),
                      ElevatedButton(
                        onPressed: () {
                          widget.onAgregarProducto();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.onPrimaryDark,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.md),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 14,
                          ),
                        ),
                        child: const Text('Agregar producto'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
