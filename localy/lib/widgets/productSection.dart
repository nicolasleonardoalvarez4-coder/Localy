import 'package:flutter/material.dart';

class Productsection extends StatelessWidget {
  final String titulo;
  final List<Widget> items;

  const Productsection({
    super.key,
    required this.titulo, 
    required this.items
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            
          ),
        ),

        const SizedBox(height: 10,),
        ...items
      ],
    );
  }
}
