import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_job_card.dart';

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
          RenitJobCard(
            jobTitle: 'Graphic Designer',
            companyName: 'Renit Group',
            location: 'Harare, Zimbabwe',
          )
        ],
      ),
    );
  }
}
