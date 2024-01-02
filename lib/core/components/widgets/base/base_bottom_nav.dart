import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/app_colors.dart';

class BaseBottomNavigationBar extends StatelessWidget {
  final List<NavItemData> tabData;
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BaseBottomNavigationBar({
    super.key,
    required this.tabData,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: tabData.asMap().entries.map((entry) {
        int idx = entry.key;
        NavItemData data = entry.value;
        return BottomNavigationBarItem(
          icon: SvgPicture.asset(idx == selectedIndex ? data.selectedIcon : data.icon),
          label: data.title,
        );
      }).toList(),
      currentIndex: selectedIndex,
      onTap: onItemSelected,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primary,
      unselectedItemColor: Colors.white70,
      selectedItemColor: Colors.white,
    );
  }
}

class NavItemData {
  final String icon;
  final String selectedIcon;
  final String title;

  NavItemData({
    required this.icon,
    required this.selectedIcon,
    required this.title,
  });
}
