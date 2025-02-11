import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class QuickApply extends StatelessWidget {
  const QuickApply({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: Center(
        child: Text('Quick Apply'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            ShadButton(
              child: Text('Cancel'),
            ),
            ShadButton(
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
