import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              RenitInternalNavbar(navbarTitle: 'Your Resume'),
              SizedBox(
                height: 20,
              ),
              Container(
                width: RenitSize.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Your Resume',
                      style: ShadTheme.of(context).textTheme.table,
                    ),
                    Text('Personal Summary'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
