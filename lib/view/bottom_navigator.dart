import 'package:baby_care/view/catatan.dart';
import 'package:baby_care/view/jadwal.dart';
import 'package:baby_care/view/konten_edukasi.dart';
import 'package:baby_care/view/notifikasi.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/color_select.dart';
import 'home.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;
  List<Widget> _screen = [Home(), Jadwal(), Catatan(), KontenEdukasi()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screen[_selectedIndex],
        bottomNavigationBar: Container(
          height: 65,
          // margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          padding: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ColorSelect.hijautua, width: 1.5),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset(1, 1),
                    spreadRadius: 10,
                    color: ColorSelect.hijautua.withOpacity(0.3))
              ],
              color: ColorSelect.hijautua),
          child: GNav(
              gap: 8,
              color: ColorSelect.hijaumuda,
              padding: EdgeInsets.all(10),
              activeColor: ColorSelect.hijautua,
              tabBackgroundColor: Colors.white.withOpacity(0.8),
              tabBorderRadius: 18,
              onTabChange: (i) {
                setState(() {
                  _selectedIndex = i;
                });
              },
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(icon: Icons.history, text: 'Jadwal'),
                GButton(icon: Icons.book_outlined, text: 'Note'),
                GButton(
                  icon: Icons.notifications,
                  text: 'Edukasi',
                ),
              ]),
        ));
  }
}
