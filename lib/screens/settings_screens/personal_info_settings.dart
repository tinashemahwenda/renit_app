import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class PersonalInfoSettings extends StatelessWidget {
  const PersonalInfoSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            spacing: 20,
            children: [
              RenitInternalNavbar(navbarTitle: 'Personal Settings'),
              Container(
                width: RenitSize.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ShadAvatar(
                      'assets/images/account-image.png',
                      size: Size.fromRadius(100),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
