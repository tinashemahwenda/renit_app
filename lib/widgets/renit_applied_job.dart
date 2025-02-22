import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/screens/job_progress_page.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class RenitAppliedJobCard extends StatelessWidget {
  final String roleName;
  final String roleCompany;
  final String progressStatus;
  final double progressValue;
  const RenitAppliedJobCard({
    super.key,
    required this.roleName,
    required this.roleCompany,
    required this.progressStatus,
    required this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => JobProgressPage())),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          width: RenitSize.width,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5,
                children: [
                  Text(
                    roleName,
                    style: ShadTheme.of(context).textTheme.table,
                  ),
                  progressValue <= 0.25
                      ? ShadBadge.outline(child: Text('Pending'))
                      : progressValue <= 0.5
                          ? ShadBadge.outline(child: Text('Pending'))
                          : ShadBadge(
                              child: Text(
                                'Success',
                              ),
                              backgroundColor: Colors.green[100],
                              foregroundColor: Colors.green,
                            ),
                ],
              ),
              Text(roleCompany),
              Text('Status: $progressStatus'),
              SizedBox(height: 10),
              ShadProgress(
                value: progressValue,
                innerBorderRadius: BorderRadius.circular(10),
                minHeight: 8,
                color: progressValue <= 0.25
                    ? Colors.red
                    : progressValue <= 0.5
                        ? Colors.amberAccent
                        : Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
