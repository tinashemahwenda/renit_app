import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

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
            Container(
              width: RenitSize.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Graphic Designer',
                            style: ShadTheme.of(context).textTheme.h4,
                          ),
                          Text('Renit Group, Zimbabwe'),
                          Text('Submitted Application 5 days ago')
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.edit)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
