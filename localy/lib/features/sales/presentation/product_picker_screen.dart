import 'package:flutter/material.dart';
import 'package:localy/core/theme/app_spacing.dart';
import 'package:localy/features/sales/presentation/widgets/product_picker_header.dart';

class Addproductscreens extends StatefulWidget {
  const Addproductscreens({super.key});

  @override
  State<Addproductscreens> createState() => _AddproductscreensState();
}

class _AddproductscreensState extends State<Addproductscreens> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppSpacing.screen),
      child: Column(children: [Addproductheader()]),
    );
  }
}
