import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/blog.dart';
import 'package:liria/double_tap.dart';
import 'package:liria/health.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
        automaticallyImplyLeading: false, // Don't show the leading button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text('HOME',
                style: TextStyle(fontSize: 16, color: Colors.black)),

            // Your widgets here
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 60),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onLongPress: () {
                                    Get.to(DoubleTap());
                                  },
                                  child: Container(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.fingerprint,
                                          size: 60,
                                        )),
                                    height:
                                        MediaQuery.of(context).size.height / 5,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
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
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Be safe",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: IconButton(
                                      onPressed: () {
                                        Get.to(Health());
                                      },
                                      icon: const Icon(
                                        Icons.health_and_safety,
                                        size: 60,
                                      )),
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(237, 255, 242, 1),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        // ignore: prefer_const_constructors
                                        BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 7.0,
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Health",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 60),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: IconButton(
                                      onPressed: () {
                                        Get.to(const DiscussionForum());
                                      },
                                      icon: const Icon(
                                        Icons.forum,
                                        size: 60,
                                      )),
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(237, 255, 242, 1),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        // ignore: prefer_const_constructors
                                        BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 7.0,
                                        ),
                                      ]),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Blogs",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),

                    ],
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
