import 'package:digital_library_pnup/pages/history.dart';
import 'package:digital_library_pnup/pages/home.dart';
import 'package:digital_library_pnup/pages/jurnal.dart';
import 'package:digital_library_pnup/pages/profile.dart';
import 'package:digital_library_pnup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;
  List<Widget> _screen = [Home(), History(), Jurnal(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screen[_selectedIndex],
        bottomNavigationBar: Container(
          height: 65,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          padding: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: ColorSelect.secondaryButtonColor, width: 1.5),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset(1, 1),
                    spreadRadius: 10,
                    color: ColorSelect.secondaryButtonColor.withOpacity(0.3))
              ],
              color: Colors.white),
          child: GNav(
              gap: 8,
              color: ColorSelect.buttonColor,
              padding: EdgeInsets.all(10),
              activeColor: Colors.white,
              tabBackgroundColor: ColorSelect.buttonColor,
              tabBorderRadius: 18,
              onTabChange: (i) {
                setState(() {
                  _selectedIndex = i;
                });
              },
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(icon: LineIcons.history, text: 'History'),
                GButton(icon: LineIcons.book, text: 'Jurnal'),
                GButton(icon: LineIcons.user, text: 'Profile'),
              ]),
        ));
  }
}
