import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Text(
          'Settings',
          style: ShadTheme.of(context).textTheme.h3,
        ),
      ],
    ));
  }
}
