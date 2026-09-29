import 'package:flutter/material.dart';

class Metricard extends StatelessWidget {
  final String titulo;
  final String valor;
  final String descripcion;
  const Metricard({
    super.key,
    required this.titulo,
    required this.valor,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 125,
      padding:  const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style:  TextStyle(
              color:  Colors.grey.shade500,
              fontSize: 12,
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 8,),
          Text(
            valor,
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            descripcion,
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}
