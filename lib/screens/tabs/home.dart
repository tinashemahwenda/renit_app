import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';

import 'package:shadcn_ui/shadcn_ui.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/renit-logo.png',
              width: 100,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: ShadInput(
              padding: EdgeInsets.all(20),
              placeholder: Text('Search for any job'),
              decoration: ShadDecoration(
                  border: ShadBorder.all(width: 1, color: Colors.black)),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Job Listings', style: ShadTheme.of(context).textTheme.h3),
              Icon(FontAwesomeIcons.list)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ShadCard(
            width: RenitSize.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            ShadBadge(
                              backgroundColor: Colors.green.shade100,
                              child: Text(
                                '12 days left',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Senior Developer',
                          style: ShadTheme.of(context).textTheme.h4,
                        ),
                        Text('MegaSoft Solutions'),
                        Text('Harare, Zimbabwe'),
                        SizedBox(height: 10),
                        Row(
                          spacing: 5,
                          children: [
                            ShadBadge.secondary(child: Text('Full Time')),
                            ShadBadge(child: Text('High Salary'))
                          ],
                        ),
                      ],
                    ),
                    Icon(FontAwesomeIcons.bookmark)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
