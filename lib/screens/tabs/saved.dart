import 'package:flutter/material.dart';

import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/screens/tabs/tab_contents/applied_jobs_tab.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'tab_contents/saved_tab_content.dart';

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
        SizedBox(height: 40),
        ShadTabs(
          decoration: ShadDecoration(
            color: Colors.white,
          ),
          value: 'saved-jobs-tabs',
          tabs: [
            ShadTab(
              enabled: true,
              value: 'saved-jobs-tabs',
              content: SavedTabContent(),
              onPressed: () {
                Center(
                  child: Text('Saved Jobs'),
                );
              },
              selectedBackgroundColor: RenitColor.background,
              child: Text('Saved'),
            ),
            ShadTab(
              selectedBackgroundColor: RenitColor.background,
              value: 'applied',
              content: AppliedJobsTab(),
              child: Text('Applied'),
            ),
          ],
        ),
      ],
    ));
  }
}
