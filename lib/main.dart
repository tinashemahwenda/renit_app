import 'package:flutter/material.dart';
import 'package:renit_app/screens/home_page.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(RenitApp());
}

class RenitApp extends StatelessWidget {
  const RenitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp(
      home: HomePage(),
    );
  }
}
