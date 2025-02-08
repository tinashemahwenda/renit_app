import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ResumeAssessment extends StatelessWidget {
  const ResumeAssessment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            RenitInternalNavbar(navbarTitle: 'Resume Assessment'),
            SizedBox(
              height: 20,
            ),
            ShadAlert(
              icon: Icon(
                Icons.info,
                color: Colors.black,
              ),
              decoration: ShadDecoration(
                labelPadding: EdgeInsets.all(10),
                color: RenitColor.yellow.withAlpha(50),
              ),
              descriptionStyle: TextStyle(
                color: Colors.black,
              ),
              description: Text(
                  'This feature allows you to assess your resume. Upload your resume and get some insights on hirability, quality and more'),
            ),
            Container(
              width: RenitSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      )),
    );
  }
}
