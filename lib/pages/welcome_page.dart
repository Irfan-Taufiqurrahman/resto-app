import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurant_apps/theme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2),
        () => Navigator.of(context).pushNamed('/main'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/resto_icon_yellow.png'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "My Resto",
              style: whiteTextStyle.copyWith(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
