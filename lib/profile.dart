import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'components/profileFields.dart';
import 'dashboard.dart';
import 'notifications.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userAvatarUrl =
      "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjV8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
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
            const Text('PROFILE',
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
    child: SingleChildScrollView(
          // ignore: avoid_unnecessary_containers
          child: Container(
              child: Column(
        children: [
          Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
              child: Align(
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(userAvatarUrl),
                      radius: 70))),
          getContainer("Name: Username", context),
          getContainer("Email : abc@example.com", context),
          getContainer("Phone : +91 9557824001", context),
        ],
      ))),),
      bottomNavigationBar: BottomAppBar(
        color:  const Color.fromRGBO(237, 255, 242, 1),
        child: Container(
          margin: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
          height: 50.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(191, 234, 212, 1),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // ignore: prefer_const_constructors
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Get.to(const Dashboard());
                },
              ),
              // ignore: prefer_const_constructors
              IconButton(
                icon: const Icon(Icons.notification_important),
                onPressed: () {
                  Get.to(const NotificationScreen());
                },
              ),

              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Get.to(const ProfileScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
