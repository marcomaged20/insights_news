import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';

class profilview extends StatefulWidget {
  const profilview({super.key});

  @override
  State<profilview> createState() => _profilviewState();
}

class _profilviewState extends State<profilview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'profil',
        style: TextStyle(color: Appcolors.lomanda),
      )),
    );
  }
}
