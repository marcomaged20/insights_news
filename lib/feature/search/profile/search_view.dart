import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';

class searchview extends StatefulWidget {
  const searchview({super.key});

  @override
  State<searchview> createState() => _searchviewState();
}

class _searchviewState extends State<searchview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'search',
        style: TextStyle(color: Appcolors.lomanda),
      )),
    );
  }
}
