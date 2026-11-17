import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class Addproductheader extends StatelessWidget {
  const Addproductheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              color: AppColors.textPrimary,
            ),
            const Text('Agregar producto', style: AppTextStyles.screenTitle),
          ],
        ),
      ],
    );
  }
}
