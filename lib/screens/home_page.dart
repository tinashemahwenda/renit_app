import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum _SelectedTab { home, saved, search, profile }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChange(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/renit-logo.png',
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        height: 10,
        onTap: _handleIndexChange,
        backgroundColor: Colors.black,
        selectedItemColor: RenitColor.yellow,
        unselectedItemColor: RenitColor.white,
        items: [
          CrystalNavigationBarItem(
            icon: FontAwesomeIcons.house,
          ),
          CrystalNavigationBarItem(
            icon: FontAwesomeIcons.solidBookmark,
          ),
          CrystalNavigationBarItem(
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
          CrystalNavigationBarItem(
            icon: FontAwesomeIcons.userGear,
          ),
        ],
      ),
    );
  }
}
