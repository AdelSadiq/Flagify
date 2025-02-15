import 'package:flagify/core/theme/theme.dart';
import 'package:flagify/presentation/splash_screen/screen_splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flagify',
        theme: lightThemeData,
        darkTheme: darkThemeData,
        home: ScreeSplash());
  }
}
