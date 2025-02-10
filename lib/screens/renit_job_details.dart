import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
//import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class RenitJobDetails extends StatelessWidget {
  const RenitJobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: RenitColor.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 40,
                      ),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child:
                            CircleAvatar(child: Icon(Icons.arrow_back_ios_new)),
                      ),
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        CircleAvatar(child: Icon(Icons.bookmark_add)),
                        CircleAvatar(child: Icon(Icons.share)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: RenitSize.height,
                  width: RenitSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  child: Column(
                    spacing: 2,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Graphic Designer',
                        style: ShadTheme.of(context).textTheme.h4,
                      ),
                      Text(
                        'Renit Group',
                        style: ShadTheme.of(context).textTheme.muted,
                      ),
                      Center(
                        child: Row(
                          children: [
                            Spacer(),
                            Icon(Icons.location_pin),
                            Text(
                              'Harare, Zimbabwe',
                              style: ShadTheme.of(context).textTheme.muted,
                            ),
                            Spacer()
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          ShadCard(
                            padding: EdgeInsets.all(10),
                            width: RenitSize.width / 2,
                            child: Row(
                              spacing: 5,
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.currency_exchange_outlined),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Salary(Monthly)'),
                                    Text('\$300-\$400'),
                                  ],
                                )
                              ],
                            ),
                          ),
                          ShadCard(
                            padding: EdgeInsets.all(10),
                            width: RenitSize.width / 2,
                            child: Row(
                              spacing: 5,
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.currency_exchange_outlined),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Salary(Monthly)'),
                                    Text('\$300-\$400'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
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
