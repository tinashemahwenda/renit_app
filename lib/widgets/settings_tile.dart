import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String settingsName;
  const SettingsTile({super.key, required this.settingsName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(settingsName), Icon(Icons.arrow_forward_ios)],
          ),
        ),
      ],
    );
  }
}
