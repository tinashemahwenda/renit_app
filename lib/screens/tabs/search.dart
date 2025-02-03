import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            'Search',
            style: ShadTheme.of(context).textTheme.h2,
          )
        ],
      )),
    );
  }
}
