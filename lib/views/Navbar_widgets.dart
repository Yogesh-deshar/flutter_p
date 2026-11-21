import 'package:dart/data/valuenotigier.dart';
import 'package:flutter/material.dart';

class NavbarWidgets extends StatefulWidget {
  const NavbarWidgets({super.key});

  @override
  State<NavbarWidgets> createState() => _NavbarWidgetsState();
}

class _NavbarWidgetsState extends State<NavbarWidgets> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Notifier,
      builder: (context, selectedpage, child) {
        return NavigationBar(
          selectedIndex: selectedpage,
          onDestinationSelected: (int value) {
            Notifier.value = value;
          },
          destinations: const <NavigationDestination>[
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.business_outlined),
              selectedIcon: Icon(Icons.business),
              label: 'Business',
            ),
            NavigationDestination(
              icon: Icon(Icons.school_outlined),
              selectedIcon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        );
      },
    );
  }
}
