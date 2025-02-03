import 'package:flutter/material.dart';
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
        ShadTabs(tabs: [
          ShadTab(
            value: 'save',
            child: Text('Saved'),
          ),
          ShadTab(
            value: 'applied',
            child: Text('Applied'),
          ),
        ])
      ],
    ));
  }
}
