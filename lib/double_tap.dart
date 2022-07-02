// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/speech_text.dart';

class DoubleTap extends StatefulWidget {
  const DoubleTap({Key? key}) : super(key: key);

  @override
  State<DoubleTap> createState() => _DoubleTapState();
}

class _DoubleTapState extends State<DoubleTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onDoubleTap: () {
              // ignore: avoid_print
              print("Double Tapped");
              Get.to(MicScreen());
            },
            child: Container(
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.touch_app,
                    size: 60,
                  )),
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width / 2,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(237, 255, 242, 1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    // ignore: prefer_const_constructors
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10.0,
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 40),
          const Text("DOUBLE TAP",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        ],
      )),
    );
  }
}
