import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../../constants/menu_items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItem selectedMenuItem = MenuItem.home;

  void onNavBarButtonSelected(MenuItem menuItem) {
    setState(() {
      selectedMenuItem = menuItem;
    });
    print('Selected menu item: ${menuItem.label}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Selected menu item: ${selectedMenuItem.label}'),
      ),
      bottomNavigationBar: BottomNavBar(onButtonSelected: onNavBarButtonSelected),
    );
  }
}
