import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:renit_app/constants/constants.dart';
import 'package:renit_app/widgets/renit_internal_navbar.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class JobProgressPage extends StatefulWidget {
  const JobProgressPage({super.key});

  @override
  State<JobProgressPage> createState() => _JobProgressPageState();
}

class _JobProgressPageState extends State<JobProgressPage> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenitColor.background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RenitInternalNavbar(navbarTitle: 'Tracking Job Progress'),
              SizedBox(height: 20),
              Container(
                width: RenitSize.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Graphic Designer',
                              style: ShadTheme.of(context).textTheme.large,
                            ),
                            Text(
                              'Renit Group, Zimbabwe',
                              style: ShadTheme.of(context).textTheme.muted,
                            ),
                            Text(
                              'Submitted Application 5 days ago',
                              style: ShadTheme.of(context).textTheme.muted,
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.edit)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Job Tracking Notifications'),
                    ShadSwitch(
                      value: value,
                      onChanged: (v) => setState(() => value = v),
                      checkedTrackColor: RenitColor.yellow,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Application Progress',
                style: ShadTheme.of(context).textTheme.table,
              ),
              SizedBox(height: 20),
              Container(
                width: RenitSize.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: AnotherStepper(
                  iconWidth: 30,
                  iconHeight: 30,
                  stepperList: [
                    StepperData(
                        iconWidget: CircleAvatar(
                          child: Icon(
                            Icons.get_app_sharp,
                            color: RenitColor.yellow,
                          ),
                        ),
                        title: StepperText('Received for assessment'),
                        subtitle: StepperText(
                            'We successfully received your application, assessment will start as soon')),
                    StepperData(
                        iconWidget: CircleAvatar(
                            child: Icon(
                          Icons.safety_check,
                          color: RenitColor.yellow,
                        )),
                        title: StepperText('Screening Process',
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                            )),
                        subtitle: StepperText(
                            'We are going through your applications and resume')),
                    StepperData(
                        iconWidget: CircleAvatar(
                            child: Icon(
                          Icons.add_task_sharp,
                          color: RenitColor.yellow,
                        )),
                        title: StepperText('Final Verdict'),
                        subtitle: StepperText(
                            'Final stage in applications review, successfull candidates will proceed to stage 4')),
                    StepperData(
                        iconWidget: CircleAvatar(
                            child: Icon(
                          Icons.call,
                          color: RenitColor.yellow,
                        )),
                        title: StepperText('Calls for interviews'),
                        subtitle: StepperText(
                            'Involves calling selected candidates for interviews and assessment')),
                  ],
                  stepperDirection: Axis.vertical,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
