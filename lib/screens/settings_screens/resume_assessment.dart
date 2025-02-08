import 'package:flutter/material.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';

class ResumeAssessment extends StatelessWidget {
  const ResumeAssessment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            RenitInternalNavbar(navbarTitle: 'Resume Assessment'),
          ],
        ),
      )),
    );
  }
}
