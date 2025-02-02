import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/screens/home_page.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(RenitApp());
}

class RenitApp extends StatelessWidget {
  const RenitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      RenitSize.width = MediaQuery.of(context).size.width;
      RenitSize.height = MediaQuery.of(context).size.height;

      RenitColor.background = Color(0x00E8E8E8);
      RenitColor.white = Colors.white;
      RenitColor.yellow = Color(0x00FFD200);
      return ShadApp(
        home: HomePage(),
      );
    });
  }
}
