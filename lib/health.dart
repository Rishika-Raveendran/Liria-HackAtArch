// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/ppd.dart';

import 'package:liria/pcos.dart';
import 'package:liria/sexedctn.dart';
import 'package:liria/tracker.dart';

import 'groups.dart';

class Health extends StatefulWidget {
  const Health({Key? key}) : super(key: key);

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
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
            const Text('HEALTH',
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
                print("Cycle");
                Get.to(const Tracker());

              },
              child: Container(
                padding: const EdgeInsets.only(
                    top: 30, left: 20, bottom: 30, right: 20),
                margin: const EdgeInsets.only(
                    top: 40, left: 20, bottom: 10, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(46, 30, 253, 0.22),
                        Color.fromRGBO(232, 251, 255, 1)
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("KNOW YOUR CYCLE",
                        style: TextStyle(fontSize: 16)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.calendar_today_outlined,
                          size: 40,
                          color: Color.fromRGBO(126, 115, 246, 1),
                        ))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print("PPD");
                Get.to(const PPDScreen());
              },
              child: Container(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, bottom: 30, right: 20),
                  margin: const EdgeInsets.only(
                      top: 25, left: 20, bottom: 10, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(191, 234, 212, 1)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("POSTPARTUM DEPRESSION",
                            style: TextStyle(fontSize: 16)),
                      ])),
            ),
            InkWell(
              onTap: () {
                print("PPD");
                Get.to(const PCOSScreen());
              },
              child: Container(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, bottom: 30, right: 20),
                  margin: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 10, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(191, 234, 212, 1)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("PCOS", style: TextStyle(fontSize: 16)),
                      ])),
            ),
            InkWell(
              onTap: () {
                print("PPD");
                Get.to(const SexEdScreen());
              },
              child: Container(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, bottom: 30, right: 20),
                  margin: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 10, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(191, 234, 212, 1)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("SEX EDUCATION", style: TextStyle(fontSize: 16)),
                      ])),
            ),
            InkWell(
              onTap: () {
                print("PPD");
                Get.to(const Groups());
              },
              child: Container(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, bottom: 30, right: 20),
                  margin: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 10, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(191, 234, 212, 1)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("GYNAEC ISSUES", style: TextStyle(fontSize: 16)),
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
