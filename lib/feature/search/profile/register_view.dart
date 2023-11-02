import 'package:flutter/material.dart';
import 'package:insights_news/core/app_colors.dart';
import 'package:insights_news/feature/auth/login_view.dart';
import 'package:insights_news/feature/home/home_view.dart';

// ignore: camel_case_types
class Regiterview extends StatefulWidget {
  const Regiterview({super.key});

  @override
  State<Regiterview> createState() => _Regiterview();
}

// ignore: camel_case_types
class _Regiterview extends State<Regiterview> {
  var fromkey = GlobalKey<FormState>();
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: fromkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 220,
                ),
                Text('creat a new Account',
                    style: TextStyle(
                        color: Appcolors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Name must not be empty';
                    }
                    return null;
                  }),
                  style: TextStyle(color: Appcolors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person), label: Text('Name')),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Email must not be empty';
                    }
                    return null;
                  }),
                  style: TextStyle(color: Appcolors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email_rounded),
                      label: Text('Email')),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: ((value) {
                    if (value!.length < 8) {
                      return 'Password must not be empty';
                    }
                    return null;
                  }),
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
                GestureDetector(
                  onTap: () {
                    if (fromkey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ));
                    }
                  },
                  child: Container(
                    height: 45,
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Appcolors.lomanda,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text('sign up'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I have an accont',
                      style: TextStyle(color: Appcolors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const loginview(),
                          ));
                        },
                        child: Text(
                          'login',
                          style: TextStyle(color: Appcolors.lomanda),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
