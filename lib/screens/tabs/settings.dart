import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Center(
          child: Text(
            'My Settings',
            style: ShadTheme.of(context).textTheme.h3,
          ),
        ),
        SizedBox(height: 40),
        ShadAlert(
          icon: Icon(FontAwesomeIcons.circleExclamation),
          title: Text(
            'These are your account setting. You can set your personal preferences in here',
            style: ShadTheme.of(context).textTheme.small,
          ),
          decoration: ShadDecoration(
            color: RenitColor.yellow.withAlpha(80),
          ),
        ),
        Container(
          width: RenitSize.width,
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Personal Information'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
