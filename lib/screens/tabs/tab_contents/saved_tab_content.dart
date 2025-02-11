import 'package:flutter/material.dart';

import 'package:renit_app/widgets/renit_job_card.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SavedTabContent extends StatelessWidget {
  const SavedTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your saved jobs',
              style: ShadTheme.of(context).textTheme.large,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: RenitJobCard(
              jobTitle: 'Graphic Designer',
              companyName: 'Renit Group',
              location: 'Bulawayo, Zimbabwe',
              jobType: 'High Salary',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: RenitJobCard(
              jobTitle: 'Driver',
              companyName: 'FastLane Pvt',
              location: 'Bulawayo, Zimbabwe',
              jobType: 'Mid-range',
            ),
          ),
        ],
      ),
    );
  }
}
