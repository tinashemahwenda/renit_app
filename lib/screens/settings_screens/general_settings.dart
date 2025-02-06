import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back_ios_new)),
                  Spacer(),
                  Text(
                    'General Settings',
                    style: ShadTheme.of(context).textTheme.h4,
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white,
                  width: RenitSize.width,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notifications Settings',
                        style: ShadTheme.of(context).textTheme.table,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('New jobs notifications'),
                          ShadSwitch(
                            value: true,
                            enabled: true,
                            onChanged: (value) => true,
                            checkedTrackColor: RenitColor.yellow,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Recommended jobs notifications'),
                          ShadSwitch(
                            value: true,
                            enabled: true,
                            onChanged: (value) => true,
                            checkedTrackColor: RenitColor.yellow,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Application tracking notifications'),
                          ShadSwitch(
                            value: true,
                            enabled: true,
                            onChanged: (value) => true,
                            checkedTrackColor: RenitColor.yellow,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white,
                  width: RenitSize.width,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location Settings',
                        style: ShadTheme.of(context).textTheme.table,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Make location visible'),
                          ShadSwitch(
                            value: true,
                            enabled: true,
                            onChanged: (value) => true,
                            checkedTrackColor: RenitColor.yellow,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text('Select location for jobs'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
