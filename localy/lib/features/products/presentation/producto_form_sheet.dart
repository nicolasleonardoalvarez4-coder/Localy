import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';
import 'package:localy/features/products/presentation/widgets/categoria_filter.dart';

class Ventanafromproduct extends StatefulWidget {
  const Ventanafromproduct({super.key});

  @override
  State<Ventanafromproduct> createState() => _VentanafromproducState();
}

class _VentanafromproducState extends State<Ventanafromproduct> {
  String categoriaSeleccionada = 'Todos';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nuevo producto', style: AppTextStyles.screenTitle),
            const SizedBox(height: AppSpacing.md),
            const Text('CODIGO DE BARRAS', style: AppTextStyles.inputLabel),
            const SizedBox(height: AppSpacing.xxs),
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Escanear o ingresar manualmente',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppRadius.md),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  ),
                  child: const Icon(
                    Icons.qr_code_scanner,
                    color: AppColors.onPrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xxs),
            const Text('Imagen'),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.surfaceMuted,
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                child: const Icon(Icons.add_photo_alternate_outlined),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            const Text('NOMBRE DEL PRODUCTO', style: AppTextStyles.inputLabel),
            const TextField(
              decoration: InputDecoration(
                hintText: 'cafe americano',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(AppRadius.md)),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            const Text('CATEGORIA', style: AppTextStyles.inputLabel),
            Categoriafilter(
              categoriaSeleccionada: categoriaSeleccionada,
              onCategoriaSeleccionada: (categoria) {
                setState(() {
                  categoriaSeleccionada = categoria;
                });
              },
            ),
            const SizedBox(height: AppSpacing.xs),
            const Padding(
              padding: EdgeInsets.only(left: AppSpacing.xxs),
              child: Row(
                children: [
                  Expanded(
                    child: Text('PRECIO', style: AppTextStyles.inputLabel),
                  ),
                  Expanded(
                    child: Text('STOCK', style: AppTextStyles.inputLabel),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '0',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppRadius.md),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.xxs),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '1',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppRadius.md),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xs),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.onPrimary,
                    ),
                    child: const Text('Agregar Producto'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
