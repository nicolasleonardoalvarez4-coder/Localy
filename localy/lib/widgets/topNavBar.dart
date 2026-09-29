import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      "es",
    ).format(DateTime.now());

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 90,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            obtenerSaludo(),
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Localy',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            fechaFormateada,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
