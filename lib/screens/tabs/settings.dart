import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/screens/settings_screens/general_settings.dart';
import 'package:renit_app/screens/settings_screens/personal_info_settings.dart';
import 'package:renit_app/widgets/settings_tile.dart';
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
        SizedBox(height: 20),
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
        SizedBox(height: 10),
        Container(
          width: RenitSize.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            spacing: 10,
            children: [
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    'Personal Settings',
                    style: ShadTheme.of(context).textTheme.large,
                  ),
                  SizedBox(height: 20),
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GeneralSettings())),
                      child: SettingsTile(settingsName: 'General Settings')),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalInfoSettings())),
                    child: SettingsTile(
                      settingsName: 'Personal Information',
                    ),
                  ),
                  SettingsTile(
                    settingsName: 'Account Settings',
                  ),
                  SizedBox(height: 5)
                ],
              )),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: RenitSize.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            spacing: 10,
            children: [
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    'Resume & Portfolio',
                    style: ShadTheme.of(context).textTheme.large,
                  ),
                  SizedBox(height: 20),
                  SettingsTile(settingsName: 'Your Resume'),
                  SettingsTile(
                    settingsName: 'File Uploads',
                  ),
                  SettingsTile(
                    settingsName: 'Job Interests',
                  ),
                  SizedBox(height: 5)
                ],
              )),
            ],
          ),
        ),
      ],
    ));
  }
}
