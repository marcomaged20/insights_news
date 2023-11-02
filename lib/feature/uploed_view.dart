import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insights_news/core/app_colors.dart';

String? imagepath;

class UploedView extends StatefulWidget {
  const UploedView({super.key});

  @override
  State<UploedView> createState() => _UploedViewState();
}

class _UploedViewState extends State<UploedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagepath != null)
              CircleAvatar(
                backgroundColor: Appcolors.grey,
                radius: 60,
                backgroundImage: (imagepath != null)
                    ? FileImage(File(imagepath!)) as ImageProvider
                    : const AssetImage('assets/logo.png'),
              ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                getImagetfromcamera();
              },
              child: Container(
                width: 200,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Appcolors.containerBG,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'uploed from camera',
                  style: TextStyle(
                      color: Appcolors.lomanda, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                getImagetfromgallery();
              },
              child: Container(
                width: 200,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Appcolors.containerBG,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'uploed from Gallery',
                  style: TextStyle(
                      color: Appcolors.lomanda, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getImagetfromcamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        imagepath = pickedImage.path;
      });
    }
  }

  getImagetfromgallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        imagepath = pickedImage.path;
      });
    }
  }
}
