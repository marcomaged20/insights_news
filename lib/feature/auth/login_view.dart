import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/feature/search/profile/register_view.dart';

// ignore: camel_case_types
class loginview extends StatefulWidget {
  const loginview({super.key});

  @override
  State<loginview> createState() => _loginviewState();
}

// ignore: camel_case_types
class _loginviewState extends State<loginview> {
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 220,
              ),
              Text('login to your account',
                  style: TextStyle(
                      color: Appcolors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(color: Appcolors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    label: Text('Email')),
              ),
              const SizedBox(
                height: 30,
              ),
              // decoration: InputDecoration(
              // focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(15),
              //     borderSide: BorderSide(color: Appcolors.lomanda)),
              // enabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(15),
              //     borderSide: BorderSide(color: Appcolors.lomanda)),
              // focusedErrorBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(15),
              //     borderSide: const BorderSide(color: Colors.red)),
              // errorBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(15),
              //     borderSide: const BorderSide(color: Colors.red)),
              //   ),

              TextFormField(
                style: TextStyle(color: Appcolors.white),
                obscureText: isVisable,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisable = !isVisable;
                          });
                        },
                        icon: Icon((isVisable)
                            ? Icons.remove_red_eye
                            : Icons.visibility_off_rounded)),
                    prefixIcon: const Icon(Icons.lock),
                    label: const Text('password')),
                // decoration: InputDecoration(
                //     focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15),
                //         borderSide: BorderSide(color: Appcolors.lomanda))),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                alignment: Alignment.center,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Appcolors.lomanda,
                    borderRadius: BorderRadius.circular(15)),
                child: const Text('login'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I have|\'t an accont',
                    style: TextStyle(color: Appcolors.grey),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const Regiterview(),
                        ));
                      },
                      child: Text(
                        'creat one!',
                        style: TextStyle(color: Appcolors.lomanda),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
