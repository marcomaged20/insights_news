import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/feature/uploed_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const UploedView(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.sacffoldBG,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 250,
          ),
          Text('Insight News',
              style: TextStyle(
                  color: Appcolors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Stay Informed, Anytime, Anywhere.',
            style: TextStyle(
              color: Appcolors.grey,
              fontSize: 24,
            ),
          ),
        ],
      )),
    );
  }
}
