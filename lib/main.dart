import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

// ...

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const GetMaterialApp(
    home: SplashScreen(),
  ));
}
