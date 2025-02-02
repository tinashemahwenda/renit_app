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

      RenitColor.background = Color.fromARGB(255, 242, 241, 241);
      RenitColor.white = Colors.white;
      RenitColor.yellow = Color.fromARGB(255, 255, 208, 0);
      return ShadApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
    });
  }
}
