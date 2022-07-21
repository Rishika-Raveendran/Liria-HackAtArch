import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liria/profile.dart';
import 'package:liria/queriesPCOS.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'dashboard.dart';
import 'notifications.dart';

class PCOSScreen extends StatefulWidget {
  const PCOSScreen({Key? key}) : super(key: key);

  @override
  State<PCOSScreen> createState() => _PCOSScreenState();
}

class _PCOSScreenState extends State<PCOSScreen> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=kwlK1uuJkZQ&ab_channel=NarayanaHealth")!,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

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
            const Text('POLYCYSTIC OVARY SYNDROME',
                style: TextStyle(fontSize: 16, color: Colors.black)),

            // Your widgets here
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),
              ),
              // ignore: prefer_const_constructors
              Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 15, left: 20, right: 20),
                child: const Text(
                    "Polycystic ovary syndrome (PCOS) is a hormonal disorder common among women of reproductive age. Women with PCOS may have infrequent or prolonged menstrual periods or excess male hormone (androgen) levels."),
              ),

              const Align(
                alignment: Alignment(-0.7, 0),
                child: Text('SYMPTOMS',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 15, left: 20, right: 20),
                child: const Text("Irregular periods"),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 15, left: 20, right: 20),
                child: const Text("Excess androgen"),
              ),
              Container(
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 15, left: 20, right: 20),
                  child: const Text("Polycystic ovaries")),

              InkWell(
                onTap: () {
                  print("Cycle");
                  Get.to(const PCOSForumDetailPage());
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 10, right: 20),
                  margin: const EdgeInsets.only(
                      top: 20, left: 20, bottom: 10, right: 20),
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
                      const Text("QUERIES", style: TextStyle(fontSize: 16)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            size: 40,
                            color: Color.fromRGBO(126, 115, 246, 1),
                          ))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Cycle");
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 10, right: 20),
                  margin: const EdgeInsets.only(
                      top: 20, left: 20, bottom: 10, right: 20),
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
                      const Text("MEET YOUR DOCTORS",
                          style: TextStyle(fontSize: 16)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            size: 40,
                            color: Color.fromRGBO(126, 115, 246, 1),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),),
      bottomNavigationBar: BottomAppBar(
        color:  const Color.fromRGBO(237, 255, 242, 1),
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20,left: 20,right: 20),
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
