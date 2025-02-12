import 'package:flutter/material.dart';
import 'package:renit_app/screens/job_progress_page.dart';

import 'package:renit_app/widgets/renit_applied_job.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AppliedJobsTab extends StatelessWidget {
  const AppliedJobsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Track Job Applications',
            style: ShadTheme.of(context).textTheme.large,
          ),
        ),
        Row(
          spacing: 5,
          children: [
            ShadBadge.secondary(child: Text('Applied: 10')),
            ShadBadge.secondary(child: Text('Pending: 3')),
            ShadBadge.secondary(child: Text('Delivered: 5')),
          ],
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => JobProgressPage())),
          child: RenitAppliedJobCard(
              roleName: 'Graphic Designer',
              roleCompany: 'Renit group',
              progressStatus: 'Received for assessment(1/4)',
              progressValue: 0.25),
        ),
        RenitAppliedJobCard(
            roleName: 'UI/UX Designer',
            roleCompany: 'Renit group',
            progressStatus: 'Interview Invitation Calls(3/4)',
            progressValue: 0.80),
        RenitAppliedJobCard(
            roleName: 'Graphic Designer',
            roleCompany: 'Renit group',
            progressStatus: 'Screening Process(2/4)',
            progressValue: 0.5),
      ],
    );
  }
}
