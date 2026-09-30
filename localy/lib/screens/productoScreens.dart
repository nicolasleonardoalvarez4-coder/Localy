import 'package:flutter/material.dart';
import 'package:localy/widgets/categoriaFilter.dart';
import 'package:localy/widgets/productHeader.dart';
import 'package:localy/models/producto.dart';
import 'package:localy/widgets/productoCartd.dart';

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
      color: const Color.fromARGB(181, 240, 237, 237),
      child: Padding(
        padding: const EdgeInsetsGeometry.only(top: 30, left: 12, right: 12),
        child: Column(
          children: [
            Productheader(),
            const SizedBox(height: 10),
            Categoriafilter(
              categoriaSeleccionada: categoriaSeleccionada,
              onCategoriaSeleccionada: (categoria) {
                setState(() {
                  categoriaSeleccionada = categoria;
                });
              },
            ),
            const SizedBox(height: 10),
            Column(
              children: 
                productos.map(
                  (producto) => Productocartd(producto: producto,
                  ),
                ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
