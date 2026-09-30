import 'package:flutter/material.dart';
import 'package:localy/models/producto.dart';

class Productocartd extends StatelessWidget {
  final Producto producto;
  const Productocartd({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            child: Text(producto.icono, style: TextStyle(fontSize: 18)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  producto.nombre,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '${producto.categoria} + ${producto.stock} en Stock',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ],
            ),
          ),
          Row(
            children: [
              
              Text(
                '\$${producto.precio}',
                style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),
              ),
              const SizedBox(width: 10,),
              Column(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.green,

                    child: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                  const SizedBox(height: 2),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey.shade300,

                    child: const Icon(Icons.border_color_outlined, size: 17),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
