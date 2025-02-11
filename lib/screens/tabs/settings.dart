import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/screens/settings_screens/account_settings.dart';
import 'package:renit_app/screens/settings_screens/general_settings.dart';
import 'package:renit_app/screens/settings_screens/personal_info_settings.dart';
import 'package:renit_app/screens/settings_screens/resume_assessment.dart';
import 'package:renit_app/screens/settings_screens/resume_page.dart';
import 'package:renit_app/screens/settings_screens/your_resume.dart';
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
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            spacing: 10,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    child: Image.asset('assets/images/account-image.png'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tinashe Mahwenda',
                    style: ShadTheme.of(context).textTheme.table,
                  ),
                  Text(
                    'Graphic Designer',
                    style: ShadTheme.of(context).textTheme.muted,
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios)
            ],
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
              SizedBox(
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
                  Divider(),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalInfoSettings())),
                    child: SettingsTile(
                      settingsName: 'Personal Information',
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountSettings())),
                    child: SettingsTile(
                      settingsName: 'Account Settings',
                    ),
                  ),
                  SizedBox(height: 5)
                ],
              )),
            ],
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
              SizedBox(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    'Resume & Portfolio',
                    style: ShadTheme.of(context).textTheme.large,
                  ),
                  SizedBox(height: 20),
                  InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResumePage())),
                      child: SettingsTile(settingsName: 'Create Resume')),
                  Divider(),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => YourResume())),
                    child: SettingsTile(
                      settingsName: 'Your Resume',
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResumeAssessment())),
                    child: SettingsTile(
                      settingsName: 'Resume Assessment',
                    ),
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
