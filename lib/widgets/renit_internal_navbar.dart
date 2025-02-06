import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class RenitInternalNavbar extends StatelessWidget {
  final String navbarTitle;
  const RenitInternalNavbar({super.key, required this.navbarTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios_new)),
        Spacer(),
        Text(
          navbarTitle,
          style: ShadTheme.of(context).textTheme.h4,
        ),
        Spacer(),
      ],
    );
  }
}
