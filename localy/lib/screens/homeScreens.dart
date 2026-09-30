import 'package:flutter/material.dart';
import 'package:localy/widgets/actionCard.dart';
import 'package:localy/widgets/metriCard.dart';
import 'package:localy/widgets/productItem.dart';
import 'package:localy/widgets/productSection.dart';
import 'package:localy/widgets/salesCard.dart';
import 'package:localy/widgets/topNavBar.dart';
import 'package:localy/models/producto.dart';

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
      backgroundColor: const Color.fromARGB(181, 240, 237, 237),
      appBar: const topNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Salescard(ingresos: 495, ventas: 4),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Metricard(
                      titulo: 'TRANSACCIONES',
                      valor: '4',
                      descripcion: 'HOY',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Metricard(
                      titulo: 'TICKET PROMEDIO',
                      valor: '\$124',
                      descripcion: 'Por venta',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Actioncard(
                      icon: Icons.point_of_sale,
                      texto: 'NUEVA VENTA',
                      backgroundColor: Colors.green,
                      foregroudColor: Colors.white,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Actioncard(
                      icon: Icons.inventory_2_outlined,
                      texto: 'Ver Productos',
                      backgroundColor: Colors.white,
                      foregroudColor: Colors.black,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Productsection(
                    titulo: 'MAS VENDIDOS',
                    items: masVendidos
                        .map((producto) => Productitem(producto: producto))
                        .toList(),
                  ),
                  const SizedBox(height: 10),
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
