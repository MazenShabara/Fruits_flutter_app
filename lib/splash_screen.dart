import 'package:flutter/material.dart';
import 'package:grapper_app/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (index) => MyHome()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Center(
          child: Image.asset("assets/images/Grabber.png"),
          //
        ),
      ),
    );
  }
}
