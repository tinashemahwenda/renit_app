import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/screens/home_page.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class QuickApplyJobScreen extends StatelessWidget {
  const QuickApplyJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: Center(
        child: Text('Quick Apply'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShadButton.outline(
              onPressed: () => showShadDialog(
                  context: context,
                  variant: ShadDialogVariant.alert,
                  builder: (context) => ShadDialog(
                        title: Text('Cancel Application?'),
                        description: Text(
                            'Are you sure you want to cancel your Application? All progress will be lost'),
                        actions: [
                          ShadButton.outline(
                            child: Text('Yes, cancel'),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage())),
                          ),
                          ShadButton(
                            child: Text('No'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      )),
              child: Text('Cancel'),
            ),
            ShadButton(
              child: Text('Submit Application'),
            ),
          ],
        ),
      ),
    );
  }
}
