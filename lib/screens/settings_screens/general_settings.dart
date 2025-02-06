import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back_ios_new)),
                  Spacer(),
                  Text(
                    'General Settings',
                    style: ShadTheme.of(context).textTheme.h4,
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
