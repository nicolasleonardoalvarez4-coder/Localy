import 'package:flutter/material.dart';

class bottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const bottomNavBar({super.key, required this.currentIndex , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory_2_outlined),
          activeIcon: Icon(Icons.inventory_2),
          label: 'Productos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          activeIcon: Icon(Icons.shopping_cart),
          label: 'vender'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarms_outlined),
          activeIcon: Icon(Icons.access_alarms),
          label: 'Historial'
        ),
      ],
    );
  }
}
