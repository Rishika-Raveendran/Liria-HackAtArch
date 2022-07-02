// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/ppd.dart';

import 'package:liria/pcos.dart';
import 'package:liria/sexedctn.dart';
import 'package:liria/tracker.dart';

class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
        automaticallyImplyLeading: false, // Don't show the leading button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back,
                  color: Color.fromRGBO(161, 218, 167, 1)),
            ),
            const Text('INTEREST GROUPS',
                style: TextStyle(fontSize: 16, color: Colors.black)),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.add,
                color: Color.fromRGBO(161, 218, 167, 1),
                size: 40,
              ),
            ),
            // Your widgets here
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            InkWell(
                onTap: () {
                  print("PPD");
                  Get.to(const PPDScreen());
                },
                child: (Stack(children: [
                  const Image(
                    image: AssetImage("images/splash.jpg"),
                    fit: BoxFit.cover,
                    width: 400,
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Container(
                        color: Colors.white.withOpacity(0.0),
                        // height: 200,
                        alignment: Alignment.center,
                        child: const Text("Cooking",
                            style: TextStyle(
                                fontSize: 35,
                                color: Color.fromRGBO(81, 81, 81, 1),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic)),
                      ),
                    ],
                  ),
                ]))),

            InkWell(
                onTap: () {
                  print("PPD");
                  Get.to(const PPDScreen());
                },
                child: (Stack(children: [
                  const Image(
                    image: AssetImage("images/splash.jpg"),
                    fit: BoxFit.cover,
                    width: 400,
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Container(
                        color: Colors.white.withOpacity(0.0),
                        // height: 200,
                        alignment: Alignment.center,
                        child: const Text("Cooking",
                            style: TextStyle(
                                fontSize: 35,
                                color: Color.fromRGBO(81, 81, 81, 1),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic)),
                      ),
                    ],
                  ),
                ]))),
            InkWell(
                onTap: () {
                  print("PPD");
                  Get.to(const PPDScreen());
                },
                child: (Stack(children: [
                  const Image(
                    image: AssetImage("images/splash.jpg"),
                    fit: BoxFit.cover,
                    width: 400,
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Container(
                        color: Colors.white.withOpacity(0.0),
                        // height: 200,
                        alignment: Alignment.center,
                        child: const Text("Cooking",
                            style: TextStyle(
                                fontSize: 35,
                                color: Color.fromRGBO(81, 81, 81, 1),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic)),
                      ),
                    ],
                  ),
                ]))),
            InkWell(
                onTap: () {
                  print("PPD");
                  Get.to(const PPDScreen());
                },
                child: (Stack(children: [
                  const Image(
                    image: AssetImage("images/splash.jpg"),
                    fit: BoxFit.cover,
                    width: 400,
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Container(
                        color: Colors.white.withOpacity(0.0),
                        // height: 200,
                        alignment: Alignment.center,
                        child: const Text("Cooking",
                            style: TextStyle(
                                fontSize: 35,
                                color: Color.fromRGBO(81, 81, 81, 1),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic)),
                      ),
                    ],
                  ),
                ]))),
            InkWell(
                onTap: () {
                  print("PPD");
                  Get.to(const PPDScreen());
                },
                child: (Stack(children: [
                  const SizedBox(height: 80),
                  const Image(
                    image: AssetImage("images/splash.jpg"),
                    fit: BoxFit.cover,
                    width: 400,
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Container(
                        color: Colors.white.withOpacity(0.0),
                        // height: 200,
                        alignment: Alignment.center,
                        child: const Text("Cooking",
                            style: TextStyle(
                                fontSize: 35,
                                color: Color.fromRGBO(81, 81, 81, 1),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic)),
                      ),
                    ],
                  ),
                ]))),
          ],
        ),
      ),
    );
  }
}
