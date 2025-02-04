import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SavedJobsPage extends StatelessWidget {
  const SavedJobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Text(
          'My Jobs',
          style: ShadTheme.of(context).textTheme.h3,
        ),
        SizedBox(height: 20),
        ShadTabs(
          decoration: ShadDecoration(
            color: Colors.white,
          ),
          value: 'tabs',
          tabs: [
            ShadTab(
              enabled: true,
              value: 'save',
              child: Text('Saved'),
              onPressed: () {
                Center(
                  child: Text('Saved Jobs'),
                );
              },
              selectedBackgroundColor: RenitColor.background,
            ),
            ShadTab(
              selectedBackgroundColor: RenitColor.background,
              value: 'applied',
              child: Text('Applied'),
            ),
          ],
        )
      ],
    ));
  }
}
