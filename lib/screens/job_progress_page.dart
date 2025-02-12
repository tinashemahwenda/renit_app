import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';

class JobProgressPage extends StatelessWidget {
  const JobProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [RenitInternalNavbar(navbarTitle: 'Tracking Job Progress')],
        ),
      )),
    );
  }
}
