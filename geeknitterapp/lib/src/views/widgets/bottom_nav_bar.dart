import 'package:flutter/material.dart';
import '../../constants/menu_items.dart';

class BottomNavBar extends StatelessWidget {
  final Function(MenuItem) onButtonSelected;

  BottomNavBar({required this.onButtonSelected});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: MenuItem.values.map((MenuItem item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.label,
        );
      }).toList(),
      onTap: (int index) {
        onButtonSelected(MenuItem.values[index]); // 콜백 함수 호출
      },
    );
  }
}
