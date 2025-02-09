import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class RenitAppliedJobCard extends StatelessWidget {
  const RenitAppliedJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            'Graphic Designer',
            style: ShadTheme.of(context).textTheme.table,
          ),
          Text('Renit Group'),
          Text('Status: Received for Assessment(1/4)'),
          SizedBox(height: 10),
          ShadProgress(
            value: 0.25,
            innerBorderRadius: BorderRadius.circular(10),
            minHeight: 8,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
