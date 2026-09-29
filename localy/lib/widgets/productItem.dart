import 'package:flutter/material.dart';
import 'package:localy/models/producto.dart';

class Productitem extends StatelessWidget {
  final Producto producto;

  const Productitem({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Row(
        children: [
          Text(producto.icono, style: TextStyle(fontSize: 22)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  producto.nombre,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  producto.detalle,
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            producto.indicador,
            style: TextStyle(
              color:  Colors.grey.shade500,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
