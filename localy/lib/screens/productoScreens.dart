import 'package:flutter/material.dart';
import 'package:localy/widgets/categoriaFilter.dart';
import 'package:localy/widgets/productHeader.dart';

class Productoscreens extends StatefulWidget {
  const Productoscreens({super.key});

  @override
  State<Productoscreens> createState() => _ProductoscreensState();
}

class _ProductoscreensState extends State<Productoscreens> {
  String categoriaSeleccionada = 'Todos';
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(181, 240, 237, 237),
      child: Padding(
        padding: const EdgeInsetsGeometry.only(top: 30, left: 12 , right: 12),
        child: Column(
          children: [
            Productheader(),
            const SizedBox(height: 10,),
            Categoriafilter(categoriaSeleccionada: categoriaSeleccionada, onCategoriaSeleccionada: (categoria){
              setState(() {
                categoriaSeleccionada = categoria;
              });
            })
          ],
        )
      ),
    );
  }
}
