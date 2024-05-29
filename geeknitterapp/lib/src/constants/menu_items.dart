import 'package:flutter/material.dart';

enum MenuItem {
  home,
  search,
  profile,
}

extension MenuItemExtension on MenuItem {
  String get label {
    switch (this) {
      case MenuItem.home:
        return 'Home';
      case MenuItem.search:
        return 'Search';
      case MenuItem.profile:
        return 'Profile';
      default:
        return '';
    }
  }

  IconData get icon {
    switch (this) {
      case MenuItem.home:
        return Icons.home;
      case MenuItem.search:
        return Icons.search;
      case MenuItem.profile:
        return Icons.person;
      default:
        return Icons.help;
    }
  }
}
