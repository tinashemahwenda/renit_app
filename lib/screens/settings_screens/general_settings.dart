import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Icon(Icons.arrow_back_ios_new),
                  Text(
                    'General Settings',
                    style: ShadTheme.of(context).textTheme.h4,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
