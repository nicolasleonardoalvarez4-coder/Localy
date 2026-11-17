import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class Productsection extends StatelessWidget {
  final String titulo;
  final List<Widget> items;

  const Productsection({super.key, required this.titulo, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titulo, style: AppTextStyles.sectionTitle),
        const SizedBox(height: AppSpacing.md),
        ...items,
      ],
    );
  }
}
