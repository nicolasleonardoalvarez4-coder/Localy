import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/features/products/domain/producto.dart';
import 'package:localy/features/products/presentation/widgets/categoria_filter.dart';
import 'package:localy/features/products/presentation/widgets/producto_card.dart';
import 'package:localy/features/products/presentation/widgets/producto_header.dart';

class Productoscreens extends StatefulWidget {
  const Productoscreens({super.key});

  @override
  State<Productoscreens> createState() => _ProductoscreensState();
}

class _ProductoscreensState extends State<Productoscreens> {
  String categoriaSeleccionada = 'Todos';
  final productos = [
    Producto(
      nombre: 'Brownie',
      detalle: '3 unidades',
      categoria: 'Bebidas',
      stock: 10,
      icono: '🍫',
      indicador: '#1',
      precio: 120,
    ),
    Producto(
      nombre: 'Café Americano',
      detalle: '2 unidades',
      categoria: 'Comida',
      stock: 8,
      icono: '☕',
      indicador: '#2',
      precio: 120,
    ),
    Producto(
      nombre: 'Jugo Natural',
      detalle: '2 unidades',
      categoria: 'Postres',
      stock: 5,
      icono: '🧃',
      indicador: '#3',
      precio: 120,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppSpacing.huge,
          left: AppSpacing.lg,
          right: AppSpacing.lg,
        ),
        child: Column(
          children: [
            const Productheader(),
            const SizedBox(height: AppSpacing.md),
            Categoriafilter(
              categoriaSeleccionada: categoriaSeleccionada,
              onCategoriaSeleccionada: (categoria) {
                setState(() {
                  categoriaSeleccionada = categoria;
                });
              },
            ),
            const SizedBox(height: AppSpacing.md),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  top: AppSpacing.md,
                  bottom: AppSpacing.lg,
                ),
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  return Productocartd(producto: productos[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
