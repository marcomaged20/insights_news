import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: IconThemeData(color: Appcolors.grey),
          scaffoldBackgroundColor: Appcolors.sacffoldBG,
          inputDecorationTheme: InputDecorationTheme(
            suffixIconColor: Appcolors.lomanda,
            labelStyle: TextStyle(color: Appcolors.grey),
            prefixIconColor: Appcolors.lomanda,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Appcolors.lomanda)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Appcolors.lomanda)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.red)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.red)),
          )),
      home: const SplashView(),
    );
  }
}
