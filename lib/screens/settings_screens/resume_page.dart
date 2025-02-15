import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SingleChildScrollView(
        child: SafeArea(
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
                    spacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Resume',
                            style: ShadTheme.of(context).textTheme.table,
                          ),
                          ShadButton.outline(
                            child: Text('Upload Resume'),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text(
                            'Role',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              'Add a your job title, could feature your level and your job role you most likely looking for'),
                          ShadButton.outline(
                            child: Text('Add role'),
                            onPressed: () {
                              showShadDialog(
                                  context: context,
                                  builder: (context) => ShadDialog(
                                        title: Text('Your Title'),
                                        actions: [
                                          ShadButton(
                                            child: Text('Add'),
                                          )
                                        ],
                                        child: ShadInput(
                                          placeholder: Text(
                                              'Enter your job title(Snr Developer, System Admin etc)'),
                                        ),
                                      ));
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text(
                            'Personal Summary',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              'Add a personal summary to your profile as a way to introduce yourself'),
                          ShadButton.outline(
                            child: Text('Add summary'),
                            onPressed: () {
                              showShadDialog(
                                  context: context,
                                  builder: (context) => ShadDialog(
                                        title: Text('Summary'),
                                        actions: [
                                          ShadButton(
                                            child: Text('Add'),
                                          )
                                        ],
                                        child: ShadInput(),
                                      ));
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text(
                            'Education',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              'Tell your employee about your education history'),
                          ShadButton.outline(
                            child: Text('Add education'),
                            onPressed: () {
                              showShadDialog(
                                  context: context,
                                  builder: (context) => ShadDialog(
                                        title: Text('Your Education'),
                                        actions: [
                                          ShadButton(
                                            child: Text('Add'),
                                          )
                                        ],
                                        child: Column(
                                          children: [
                                            ShadInput(
                                              placeholder: Text(
                                                  'Enter school/institue name'),
                                            ),
                                            ShadInput(
                                              placeholder: Text(
                                                  'Enter qualification title'),
                                            ),
                                            ShadInput(
                                              placeholder: Text(
                                                  'Year started-ended(e.g 2012-2014)'),
                                            ),
                                          ],
                                        ),
                                      ));
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text(
                            'Skills',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Tell us about our skills'),
                          ShadButton.outline(
                            child: Text('Add skill'),
                            onPressed: () {
                              showShadDialog(
                                  context: context,
                                  builder: (context) => ShadDialog(
                                        title: Text('Your Skills'),
                                        description: Column(
                                          spacing: 10,
                                          children: [
                                            Row(
                                              spacing: 10,
                                              children: [
                                                ShadBadge.outline(
                                                  padding: EdgeInsets.all(5),
                                                  child: Row(
                                                    spacing: 10,
                                                    children: [
                                                      Text(
                                                        'Leadership',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Text(
                                                        'x',
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            ShadInput(
                                              placeholder:
                                                  Text('Add your skill'),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          ShadButton(
                                            child: Text('Add'),
                                          )
                                        ],
                                      ));
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text(
                            'Work Experience',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Tell us about your previous experience'),
                          ShadButton.outline(
                            child: Text('Add experience'),
                            onPressed: () {
                              showShadDialog(
                                  context: context,
                                  builder: (BuildContext context) => ShadDialog(
                                        title: Text('Your Education'),
                                        actions: [
                                          ShadButton(
                                            child: Text('Add'),
                                          )
                                        ],
                                        child: Column(
                                          spacing: 10,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ShadSwitch(
                                              value: isActive,
                                              label: Text(
                                                'Are you still on this role?',
                                              ),
                                              enabled: true,
                                              onChanged: (v) =>
                                                  setState(() => isActive = v),
                                            ),
                                            ShadInput(
                                              placeholder:
                                                  Text('Enter company name'),
                                            ),
                                            ShadInput(
                                              placeholder:
                                                  Text('Enter role/title'),
                                            ),
                                            ShadInput(
                                              placeholder: Text(
                                                  'Year started-ended(e.g 2012-2014)'),
                                            ),
                                          ],
                                        ),
                                      ));
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          ShadButton(
                            child: Text('Create Resume'),
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
      ),
    );
  }
}
