import 'package:flagify/config/di/injectable.dart';
import 'package:flagify/core/textstyle/textstyle.dart';
import 'package:flagify/home/presentation/bloc/home_bloc.dart';
import 'package:flagify/home/presentation/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreeSplash extends StatefulWidget {
  const ScreeSplash({super.key});

  @override
  State<ScreeSplash> createState() => _ScreeSplashState();
}

class _ScreeSplashState extends State<ScreeSplash> {
  void onLoadSplashScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => BlocProvider(
            create: (context) => getIt<HomeBloc>(), child: ScreenHome())));
  }

  @override
  void initState() {
    onLoadSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Flagify", style: kTextStyleFancy20)),
    );
  }
}
