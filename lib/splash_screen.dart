import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(children: [
      Image(
        image: const AssetImage("images/splash.jpg"),
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 380),
          Container(
            color: Colors.white.withOpacity(0.0),
            height: 200,
            alignment: Alignment.center,
            child: const Text("LIRIA",
                style: TextStyle(
                    fontSize: 35,
                    color: Color.fromRGBO(81, 81, 81, 1),
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic)),
          ),
        ],
      ),
    ])));
  }
}
