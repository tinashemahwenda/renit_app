import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SavedTabContent extends StatelessWidget {
  const SavedTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadAlert(
      icon: Icon(FontAwesomeIcons.circleExclamation),
      title: Text(
        'These are the jobs that you have saved. You can enable direct application',
        style: ShadTheme.of(context).textTheme.small,
      ),
      decoration: ShadDecoration(
        color: RenitColor.yellow.withAlpha(80),
      ),
    );
  }
}
