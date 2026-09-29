import 'package:flutter/material.dart';

class Actioncard extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color backgroundColor;
  final Color foregroudColor;
  final VoidCallback onTap;

  const Actioncard({
    super.key,
    required this.icon,
    required this.texto,
    required this.backgroundColor,
    required this.foregroudColor,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(//widget de Material Design que permite que cualquier widget hijo responda a gestos táctiles mostrando una animación visual de onda
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey.shade300)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: foregroudColor,
              size: 20,
            ),
            const SizedBox(width: 8,),
            Text(
              texto,
              style: TextStyle(
                color: foregroudColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}