import 'package:flutter/material.dart';
import 'package:localy/widgets/bottomNavBar.dart';
import 'homeScreens.dart';
import 'productoScreens.dart';

class Mainscreens extends StatefulWidget {
  const Mainscreens({super.key});

  @override
  State<Mainscreens> createState() => _MainscreensState();
}

class _MainscreensState extends State<Mainscreens> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    Homescreens(),
    Productoscreens()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: bottomNavBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}