import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renit_app/screens/renit_job_details.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../constants/constants.dart';

class RenitJobCard extends StatefulWidget {
  final String jobTitle;
  final String companyName;
  final String location;
  final String jobType;
  const RenitJobCard({
    super.key,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.jobType,
  });

  @override
  State<RenitJobCard> createState() => _RenitJobCardState();
}

class _RenitJobCardState extends State<RenitJobCard> {
  bool isSaved = false;

  void onSave() {
    setState(() {
      if (isSaved == false) {
        isSaved = true;
      } else {
        isSaved = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => RenitJobDetails())),
      child: ShadCard(
        shadows: [BoxShadow(offset: Offset.zero)],
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
                      widget.jobTitle,
                      style: ShadTheme.of(context).textTheme.h4,
                    ),
                    Text(widget.companyName),
                    Row(
                      spacing: 2,
                      children: [
                        Icon(
                          FontAwesomeIcons.locationDot,
                          color: Colors.black38,
                        ),
                        Text(widget.location),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      spacing: 5,
                      children: [
                        ShadBadge.secondary(child: Text('Full Time')),
                        ShadBadge(child: Text(widget.jobType)),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => onSave(),
                  child: isSaved
                      ? Icon(FontAwesomeIcons.solidBookmark, size: 20)
                      : Icon(FontAwesomeIcons.bookmark, size: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
