import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';

class YourResume extends StatelessWidget {
  const YourResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            RenitInternalNavbar(navbarTitle: 'Your Resume'),
            SizedBox(
              height: 20,
            ),
            Container(
              width: RenitSize.width,
            )
          ],
        ),
      )),
    );
  }
}
