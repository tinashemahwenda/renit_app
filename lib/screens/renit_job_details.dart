import 'package:flutter/material.dart';
//import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class RenitJobDetails extends StatelessWidget {
  const RenitJobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child:
                          CircleAvatar(child: Icon(Icons.arrow_back_ios_new)),
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        CircleAvatar(child: Icon(Icons.bookmark_add)),
                        CircleAvatar(child: Icon(Icons.share)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: ShadButton(
          child: Row(
            spacing: 5,
            children: [
              Icon(
                Icons.mail_outline_outlined,
                color: Colors.white,
              ),
              Text('Apply for this Job'),
            ],
          ),
        ));
  }
}
