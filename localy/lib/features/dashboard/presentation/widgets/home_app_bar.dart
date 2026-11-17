import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_text_styles.dart';

class topNavBar extends StatelessWidget implements PreferredSizeWidget {
  const topNavBar({super.key});

  String obtenerSaludo() {
    final hora = DateTime.now().hour;

    if (hora < 12) return 'Buenos dias';
    if (hora < 18) return 'Buenas tardes';
    return 'Buenas Noches';
  }

  @override
  Widget build(BuildContext context) {
    final fechaFormateada = DateFormat(
      "EEEE, d 'de' MMMM",
      'es',
    ).format(DateTime.now());

    return AppBar(
      backgroundColor: AppColors.surface,
      elevation: 0,
      toolbarHeight: 90,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(obtenerSaludo(), style: AppTextStyles.greeting),
          const Text('Localy', style: AppTextStyles.brand),
          Text(fechaFormateada, style: AppTextStyles.date),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
