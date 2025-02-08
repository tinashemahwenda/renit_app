import 'package:flutter/material.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [RenitInternalNavbar(navbarTitle: 'Account Settings')],
          ),
        ),
      ),
    );
  }
}
