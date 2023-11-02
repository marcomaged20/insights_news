import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';

class notificationview extends StatefulWidget {
  const notificationview({super.key});

  @override
  State<notificationview> createState() => _notificationState();
}

class _notificationState extends State<notificationview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'notification',
        style: TextStyle(color: Appcolors.lomanda),
      )),
    );
  }
}
