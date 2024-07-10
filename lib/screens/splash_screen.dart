import 'dart:async';

import 'package:delivery_app/screens/location_access_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => const LocationAccessScreen(),));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF2D55),
      body: Center(
        child: Image.asset("assets/logo.png", scale: 3),
      ),
    );
  }
}