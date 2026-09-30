import 'package:flutter/material.dart';
import 'package:localy/widgets/ventanaFromProduct.dart';

class Productheader extends StatelessWidget {
  const Productheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Productos',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20)
              )),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Ventanafromproduct(),
                );
              },

              child: Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            isDense: true, //reduce el tamaño visual base
            contentPadding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 16.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: 'Buscar producto',
            prefixIcon: Icon(Icons.search, size: 20),
          ),
        ),
      ],
    );
  }
}
