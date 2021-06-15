import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'home_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  // ignore: unused_field
  List<Widget> _widgetsOption = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,
                    color: _selectedIndex != 0 ? Colors.grey : Colors.blue,
                    size: 30),
                label: "hello"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.ondemand_video,
                  color: _selectedIndex != 1 ? Colors.grey : Colors.blue,
                  size: 30,
                ),
                label: "hello"),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.accountCircleOutline,
                    color: _selectedIndex != 2 ? Colors.grey : Colors.blue,
                    size: 30),
                label: "hello"),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.accountGroupOutline,
                    color: _selectedIndex != 3 ? Colors.grey : Colors.blue,
                    size: 30),
                label: "hello"),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.bellOutline,
                    color: _selectedIndex != 4 ? Colors.grey : Colors.blue,
                    size: 30),
                label: "hello"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu,
                    color: _selectedIndex != 5 ? Colors.grey : Colors.blue,
                    size: 30),
                label: "hello"),
          ],
        ),
        body: Center(child: _widgetsOption.elementAt(_selectedIndex)));
  }
}
