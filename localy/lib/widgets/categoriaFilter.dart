import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.only(right: 7),
            child: FilterChip(
              label: Text('categoria'),
              selected: isSelected,
              showCheckmark: false,
              onSelected: (_) {
                onCategoriaSeleccionada(categoria);
              },
              backgroundColor: Colors.white,
              selectedColor: Colors.black,

              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.black87,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: 14,
              ),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
