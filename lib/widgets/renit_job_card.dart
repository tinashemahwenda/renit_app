import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../constants/constants.dart';

class RenitJobCard extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String location;
  const RenitJobCard({
    super.key,
    required this.jobTitle,
    required this.companyName,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ShadCard(
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
                          'Newly added',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    jobTitle,
                    style: ShadTheme.of(context).textTheme.h4,
                  ),
                  Text(companyName),
                  Row(
                    spacing: 2,
                    children: [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        color: Colors.black38,
                      ),
                      Text(location),
                    ],
                  ),
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
    );
  }
}
