import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_colors.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/features/dashboard/presentation/widgets/action_card.dart';
import 'package:localy/features/dashboard/presentation/widgets/home_app_bar.dart';
import 'package:localy/features/dashboard/presentation/widgets/metric_card.dart';
import 'package:localy/features/dashboard/presentation/widgets/product_item.dart';
import 'package:localy/features/dashboard/presentation/widgets/product_section.dart';
import 'package:localy/features/dashboard/presentation/widgets/sales_card.dart';
import 'package:localy/features/products/domain/producto.dart';

class Homescreens extends StatefulWidget {
  const Homescreens({super.key});

  @override
  State<Homescreens> createState() => _HomescreensState();
}

class _HomescreensState extends State<Homescreens> {
  final masVendidos = [
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

  final masbajo = [
    Producto(
      nombre: 'Brownie',
      detalle: '3 unidades',
      categoria: 'Bebida',
      stock: 5,
      icono: '🍫',
      indicador: '#1',
      precio: 120,
    ),
    Producto(
      nombre: 'Café Americano',
      detalle: '2 unidades',
      categoria: 'Comida',
      stock: 3,
      icono: '☕',
      indicador: '#2',
      precio: 120,
    ),
    Producto(
      nombre: 'Jugo Natural',
      detalle: '2 unidades',
      stock: 2,
      categoria: 'Bebida',
      icono: '🧃',
      indicador: '#3',
      precio: 120,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const topNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppSpacing.xs,
            right: AppSpacing.xs,
          ),
          child: Column(
            children: [
              const Salescard(ingresos: 495, ventas: 4),
              const SizedBox(height: AppSpacing.md),
              const Row(
                children: [
                  Expanded(
                    child: Metricard(
                      titulo: 'TRANSACCIONES',
                      valor: '4',
                      descripcion: 'HOY',
                    ),
                  ),
                  SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Metricard(
                      titulo: 'TICKET PROMEDIO',
                      valor: '\$124',
                      descripcion: 'Por venta',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  Expanded(
                    child: Actioncard(
                      icon: Icons.point_of_sale,
                      texto: 'NUEVA VENTA',
                      backgroundColor: AppColors.primary,
                      foregroudColor: AppColors.onPrimary,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Actioncard(
                      icon: Icons.inventory_2_outlined,
                      texto: 'Ver Productos',
                      backgroundColor: AppColors.surface,
                      foregroudColor: AppColors.textPrimary,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Column(
                children: [
                  Productsection(
                    titulo: 'MAS VENDIDOS',
                    items: masVendidos
                        .map((producto) => Productitem(producto: producto))
                        .toList(),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Productsection(
                    titulo: 'STOCK BAJO',
                    items: masbajo
                        .map((producto) => Productitem(producto: producto))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
