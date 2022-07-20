// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liria/profile.dart';

import 'dashboard.dart';
import 'notifications.dart';

class DiscussionForum extends StatefulWidget {
  const DiscussionForum({Key? key}) : super(key: key);

  @override
  _DiscussionForumState createState() => _DiscussionForumState();
}

class _DiscussionForumState extends State<DiscussionForum> {
  List posts = [
    {
      "owner": "Amelia",
      "timeBefore": "4hrs",
      "message": "Does anyone get upper abdominal pain during ovulation",
      "profileImage": "images/lady1.jpg",
    },
    {
      "owner": "Jayanthi Desay",
      "timeBefore": "2 days",
      "message": "Does your cup stay in place or does it slip down?",
      "profileImage": "images/lady4.jpg",
    },
    {
      "owner": "Teresa",
      "timeBefore": "3 days",
      "message":
          "My cycle keeps getting longer. I have no idea why. Is it dangerous",
      "profileImage": "images/lady5.jpg",
    }
  ];

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
              const Text('BLOGS',
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
        body: Container(
            child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                  height: 50,
                  width: 350,
                  margin: const EdgeInsets.only(top: 40, bottom: 15),
                  padding: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Feel free to ask...",
                          hintStyle: TextStyle(fontSize: 14),
                          suffixIcon: Icon(Icons.send_outlined)))),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(onTap: () {}, child: getCategoryInkWell("Featured")),
                InkWell(onTap: () {}, child: getCategoryInkWell("Latest")),
                InkWell(onTap: () {}, child: getCategoryInkWell("Celebrities")),
              ]),
              SingleChildScrollView(
                  child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 500,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: posts.length,
                          itemBuilder: (context, index) => Card(
                                  child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(children: <Widget>[
                                  Row(children: [
                                    Container(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                          Text("${posts[index]["owner"]}"),
                                          Text("${posts[index]["timeBefore"]}",
                                              style: const TextStyle(
                                                  fontSize: 14)),
                                        ])),
                                  ]),
                                  const Divider(),
                                  // ignore: sized_box_for_whitespace
                                  Container(
                                      height: 100,
                                      child:
                                          Text("${posts[index]["message"]}")),
                                  Row(children: [
                                    IconButton(
                                        icon: const Icon(
                                            Icons.visibility_rounded),
                                        onPressed: () {}),
                                    IconButton(
                                        icon: const Icon(Icons.message),
                                        onPressed: () {}),
                                  ]),
                                  const Divider(),
                                ]),
                              )))))
            ])
          ],
        )),
      bottomNavigationBar: BottomAppBar(
        color:  const Color.fromRGBO(237, 255, 242, 1),
        child: Container(
          margin: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
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

Widget getCategoryInkWell(String category) {
  return Container(
      margin: const EdgeInsets.only(left: 4, right: 3),
      padding: const EdgeInsets.only(top: 5),
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Text("$category",
          style: const TextStyle(color: Colors.black, fontSize: 16),
          textAlign: TextAlign.center));
}
