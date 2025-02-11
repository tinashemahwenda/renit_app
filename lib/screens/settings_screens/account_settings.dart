import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:renit_app/widgets/settings_tile.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              RenitInternalNavbar(navbarTitle: 'Account Settings'),
              SizedBox(height: 40),
              Container(
                width: RenitSize.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Security & Privacy',
                      style: ShadTheme.of(context).textTheme.table,
                    ),
                    SizedBox(height: 10),
                    SettingsTile(settingsName: 'Change Password'),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: RenitSize.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.grey,
                          ),
                          Text(
                            'Sign Out',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: RenitSize.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.delete_outlined,
                            color: Colors.red,
                          ),
                          Text(
                            'Delete Account',
                            style: TextStyle(
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
