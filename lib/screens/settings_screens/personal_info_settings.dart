import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class PersonalInfoSettings extends StatelessWidget {
  const PersonalInfoSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            spacing: 10,
            children: [
              RenitInternalNavbar(navbarTitle: 'Personal Settings'),
              SizedBox(
                height: 20,
              ),
              Container(
                width: RenitSize.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  spacing: 20,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        ShadAvatar(
                          'assets/images/account-image.png',
                          size: Size.fromRadius(60),
                          fit: BoxFit.cover,
                        ),
                        CircleAvatar(
                          child: Icon(
                            Icons.edit,
                            size: 12,
                            color: Colors.black,
                          ),
                          radius: 12,
                          backgroundColor: RenitColor.yellow,
                        )
                      ],
                    ),
                    Text(
                      'Tinashe Mahwenda',
                      style: ShadTheme.of(context).textTheme.h4,
                    ),
                  ],
                ),
              ),
              Container(
                width: RenitSize.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Details',
                      style: ShadTheme.of(context).textTheme.table,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
