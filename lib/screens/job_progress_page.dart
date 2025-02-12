import 'package:easy_stepper/easy_stepper.dart';
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
          children: [
            RenitInternalNavbar(navbarTitle: 'Tracking Job Progress'),
            SizedBox(height: 20),
            EasyStepper(
              activeStep: 0,
              direction: Axis.vertical,
              internalPadding: 10,
              showLoadingAnimation: false,
              alignment: Alignment.topLeft,
              steps: [
                EasyStep(
                    title: 'First Step',
                    customStep: CircleAvatar(
                      radius: 10,
                    )),
                EasyStep(
                  title: 'Second Step',
                  icon: Icon(Icons.home),
                ),
                EasyStep(
                  title: 'Second Step',
                  icon: Icon(Icons.home),
                ),
                EasyStep(
                  title: 'Second Step',
                  icon: Icon(Icons.home),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
