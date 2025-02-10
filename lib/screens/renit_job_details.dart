import 'package:flutter/material.dart';

class RenitJobDetails extends StatelessWidget {
  const RenitJobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(child: Icon(Icons.arrow_back_ios_new)),
                Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(child: Icon(Icons.bookmark_add)),
                    CircleAvatar(child: Icon(Icons.share)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
