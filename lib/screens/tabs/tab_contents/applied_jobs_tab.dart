import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_applied_job.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AppliedJobsTab extends StatelessWidget {
  const AppliedJobsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShadAlert(
          icon: Icon(FontAwesomeIcons.circleExclamation),
          title: Text(
            'These are the jobs that you have applied. You can enable direct application',
            style: ShadTheme.of(context).textTheme.small,
          ),
          decoration: ShadDecoration(
            color: RenitColor.yellow.withAlpha(80),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Appled Jobs',
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
        RenitAppliedJobCard(
            roleName: 'Graphic Designer',
            roleCompany: 'Renit group',
            progressStatus: 'Received for assessment(1/4)',
            progressValue: 0.25)
      ],
    );
  }
}
