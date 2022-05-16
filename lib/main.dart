import 'package:flutter/material.dart';
import 'package:restaurant_apps/pages/home_page.dart';
import 'package:restaurant_apps/pages/main_page.dart';
import 'package:restaurant_apps/pages/welcome_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/main': (context) => const MainScreen(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
