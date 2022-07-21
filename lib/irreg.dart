import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/blog.dart';
import 'package:liria/dashboard.dart';
import 'package:liria/notifications.dart';
import 'package:liria/profile.dart';
import 'package:liria/queriesIRREG.dart';
import 'package:liria/queriesPPD.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class IRREGScreen extends StatefulWidget {
  const IRREGScreen({Key? key}) : super(key: key);

  @override
  State<IRREGScreen> createState() => _IRREGScreenState();
}

class _IRREGScreenState extends State<IRREGScreen> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=bkoqKWZtB_0&ab_channel=Maitri")!,
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
            const Text('MENSTRUAL IRREGULARITIES',
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
                    "For most women, a normal menstrual cycle ranges from 21 to 35 days.1 However, 14% to 25% of women have irregular menstrual cycles, meaning the cycles are shorter or longer than normal; are heavier or lighter than normal; or are experienced with other problems, like abdominal cramps.2 Irregular cycles can be ovulatory, meaning that ovulation occurs, or anovulatory, meaning ovulation does not occur.\n "),
              ),

              const Align(
                alignment: Alignment(-0.7, 0),
                child: Text('CAUSES',
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),

              Container(
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 15, left: 20, right: 20),
                  child: const Text("Stress and lifestyle factors\n\nBirth control pills\n\nUterine polyps or fibroids\n\nEndometriosis\n\nPelvic inflammatory disease\n\nPolycystic ovary syndrome")),

              InkWell(
                onTap: () {
                  print("Cycle");
                  print("IRREG");
                  Get.to(const IRREGForumDetailPage());
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
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(237, 255, 242, 1),
        child: Container(
          margin:
          const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
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
