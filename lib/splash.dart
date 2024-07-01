import 'dart:async';//for Duration in Timer
import 'package:firebase_05/create_account.dart';
import 'package:firebase_05/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_05/ui_helper.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => CreateAccount()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UiHelper.myHomeScreenText("Please","wait...")
    );
  }
}
