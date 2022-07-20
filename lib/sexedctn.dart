import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liria/profile.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'dashboard.dart';
import 'notifications.dart';

class SexEdScreen extends StatefulWidget {
  const SexEdScreen({Key? key}) : super(key: key);

  @override
  State<SexEdScreen> createState() => _SexEdScreenState();
}

class _SexEdScreenState extends State<SexEdScreen> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=6kaCdrvNGZw")!,
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  final YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=R-gwxS-7h9o&ab_channel=TEDxTalks")!,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );

  final YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=6kaCdrvNGZw")!,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
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
            const Text('SEX EDUCATION',
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
                  "Sex education is high quality teaching and learning about a broad variety of topics related to sex and sexuality. It explores values and beliefs about those topics and helps people gain the skills that are needed to navigate relationships with self, partners, and community, and manage one’s own sexual health."),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 15, left: 20, right: 20),
              child: const Text(
                  "More related videos.."),
            ),
            Container(
              child: YoutubePlayer(
                controller: _controller1,
                liveUIColor: Colors.amber,
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
              ),
            ),
          ],
        ),
      ),
      ),

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
