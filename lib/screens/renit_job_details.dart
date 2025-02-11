import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
//import 'package:renit_app/constants/constants.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:share_plus/share_plus.dart';

class RenitJobDetails extends StatefulWidget {
  const RenitJobDetails({super.key});

  @override
  State<RenitJobDetails> createState() => _RenitJobDetailsState();
}

class _RenitJobDetailsState extends State<RenitJobDetails> {
  final String textShare = 'Helloworld';
  void shareJob(BuildContext context) {
    Share.share(textShare);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: RenitColor.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Row(
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
                          InkWell(
                              child: CircleAvatar(child: Icon(Icons.share))),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: RenitSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 2,
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: ShadBadge.outline(child: Text('6 days left')),
                        ),
                        Center(
                          child: Text(
                            'Graphic Designer',
                            style: ShadTheme.of(context).textTheme.h4,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Renit Group',
                            style: ShadTheme.of(context).textTheme.muted,
                          ),
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
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShadCard(
                              shadows: [BoxShadow(offset: Offset.zero)],
                              padding: EdgeInsets.all(10),
                              width: RenitSize.width / 2.3,
                              child: Row(
                                spacing: 5,
                                children: [
                                  CircleAvatar(
                                    child:
                                        Icon(Icons.currency_exchange_outlined),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Salary',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '\$300-\$400',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            ShadCard(
                              padding: EdgeInsets.all(10),
                              width: RenitSize.width / 2.3,
                              shadows: [BoxShadow(offset: Offset.zero)],
                              child: Row(
                                spacing: 5,
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.cases_outlined),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Job type',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Full-Time',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShadCard(
                              padding: EdgeInsets.all(10),
                              width: RenitSize.width / 2.3,
                              shadows: [BoxShadow(offset: Offset.zero)],
                              child: Row(
                                spacing: 5,
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.bar_chart_rounded),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Level',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Entry-Level',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            ShadCard(
                              padding: EdgeInsets.all(10),
                              width: RenitSize.width / 2.3,
                              shadows: [BoxShadow(offset: Offset.zero)],
                              child: Row(
                                spacing: 5,
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.location_city_rounded),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Condition',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Office Work',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'About this Job',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                            'Renit Group is a dynamic and innovative company specializing in offering Marketing and Software Development Solutions. We are committed to delivering top-tier creative solutions to our clients. As we continue to grow, we are looking for a talented and passionate Graphic Designer to join our team.'),
                        SizedBox(height: 10),
                        Text(
                          'Job Description',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                            '1. Design and produce high-quality graphics for digital and print media, including social media, websites, marketing materials, and branding assets.\n\n2. Develop creative concepts that align with brand guidelines and client expectations.\n\n3. Collaborate with the marketing and content teams to create visually engaging campaigns.\n\n4.Stay updated with industry trends and design tools to enhance creative output. \n\n5.Manage multiple design projects while meeting deadlines.'),
                        SizedBox(height: 10),
                        Text(
                          'Requirements',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                            '✅ Proven experience as a Graphic Designer (portfolio required).\n✅ Proficiency in Adobe Creative Suite (Photoshop, Illustrator, InDesign, etc.).\n✅ Strong understanding of typography, color theory, and branding principles.\n✅ Ability to work independently and collaboratively in a fast-paced environment.\n✅ Excellent communication and problem-solving skills.\n✅ (Bonus) Experience with motion graphics, UI/UX, or video editing is a plus.'),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShadButton.outline(
                child: Row(
                  spacing: 5,
                  children: [
                    Icon(
                      Icons.mail_outline_outlined,
                      color: Colors.white,
                    ),
                    Text('External Apply'),
                  ],
                ),
              ),
              ShadButton(
                child: Row(
                  spacing: 5,
                  children: [
                    Icon(
                      Icons.bolt_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      'Quick Apply',
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
