import 'package:flutter/material.dart';
import 'package:localy/app/widgets/app_bottom_nav_bar.dart';
import 'package:localy/features/dashboard/presentation/home_screen.dart';
import 'package:localy/features/products/presentation/productos_screen.dart';
import 'package:localy/features/sales/presentation/product_picker_screen.dart';
import 'package:localy/features/sales/presentation/venta_screen.dart';

class Mainscreens extends StatefulWidget {
  const Mainscreens({super.key});

  @override
  State<Mainscreens> createState() => _MainscreensState();
}

class _MainscreensState extends State<Mainscreens> {
  int currentIndex = 0;
  bool mostrarAddProduct = false;

  List<Widget> get screens => <Widget>[
    const Homescreens(),
    const Productoscreens(),
    Ventasscreens(
      onAgregarProducto: () {
        setState(() {
          mostrarAddProduct = true;
        });
      },
    ),
    const Center(child: Text('Historial')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mostrarAddProduct
          ? const Addproductscreens()
          : screens[currentIndex],
      bottomNavigationBar: bottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            mostrarAddProduct = false;
          });
        },
      ),
    );
  }
}
