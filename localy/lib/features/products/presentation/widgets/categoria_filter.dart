import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class Categoriafilter extends StatelessWidget {
  final String categoriaSeleccionada;
  final Function(String) onCategoriaSeleccionada;

  const Categoriafilter({
    super.key,
    required this.categoriaSeleccionada,
    required this.onCategoriaSeleccionada,
  });

  @override
  Widget build(BuildContext context) {
    final categorias = ['Todos', 'Bebidas', 'Comida', 'Postres', 'Otros'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categorias.map((categoria) {
          final isSelected = categoriaSeleccionada == categoria;
          return Padding(
            padding: const EdgeInsets.only(right: AppSpacing.sm),
            child: FilterChip(
              label: Text(categoria),
              selected: isSelected,
              showCheckmark: false,
              onSelected: (_) {
                onCategoriaSeleccionada(categoria);
              },
              backgroundColor: AppColors.surface,
              selectedColor: AppColors.dark,
              labelStyle: isSelected
                  ? AppTextStyles.chipSelected
                  : AppTextStyles.chip,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.xl),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
