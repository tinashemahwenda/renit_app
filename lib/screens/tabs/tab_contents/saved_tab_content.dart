import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
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
          ShadAlert(
            icon: Icon(FontAwesomeIcons.circleExclamation),
            title: Text(
              'These are the jobs that you have saved. You can enable direct application',
              style: ShadTheme.of(context).textTheme.small,
            ),
            decoration: ShadDecoration(
              color: RenitColor.yellow.withAlpha(80),
            ),
          ),
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
                location: 'Bulawayo, Zimbabwe'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: RenitJobCard(
                jobTitle: 'Driver',
                companyName: 'FastLane Pvt',
                location: 'Bulawayo, Zimbabwe'),
          ),
        ],
      ),
    );
  }
}
