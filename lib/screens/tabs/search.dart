import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Text(
          'Search',
          style: ShadTheme.of(context).textTheme.h2,
        )
      ],
    ));
  }
}
