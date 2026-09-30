import 'package:flutter/material.dart';

class Ventanafromproduct extends StatefulWidget {
  const Ventanafromproduct({super.key});

  @override
  State<Ventanafromproduct> createState() => _VentanafromproducState();
}

class _VentanafromproducState extends State<Ventanafromproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nuevo producto',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                const Text('CODIGO DE BARRAS', style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),),
                const SizedBox(height: 2,),
                Row(
                  children: [
                    Expanded(child: 
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Escanear o ingresar manualmente',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                    ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 2,),
                const Text('Imagen'),
                GestureDetector(//widget invisible que envuelve a otros elementos para detectar interacciones táctiles y convertir cualquier diseño en un componente interactivo
                  onTap: (){},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Icon(
                      Icons.add_photo_alternate_outlined
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                

              ],
            ),
          ),
        ),
    );
  }
}