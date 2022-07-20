import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/blog.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PPDScreen extends StatefulWidget {
  const PPDScreen({Key? key}) : super(key: key);

  @override
  State<PPDScreen> createState() => _PPDScreenState();
}

class _PPDScreenState extends State<PPDScreen> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=6kaCdrvNGZw")!,
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
            const Text('POSTPARTUM DEPRESSION',
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
                    "Postpartum depression (PPD) is a complex mix of physical, emotional, and behavioral changes that happen in some women after giving birth."),
              ),

              const Align(
                alignment: Alignment(-0.7, 0),
                child: Text('SYMPTOMS',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 15, left: 20, right: 20),
                child: const Text("Severe fatigue"),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 15, left: 20, right: 20),
                child: const Text("Frequent Mood Changes"),
              ),
              Container(
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 15, left: 20, right: 20),
                  child: const Text("Trouble sleeping")),

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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        unselectedItemColor: Colors.teal,
        selectedItemColor: Colors.blue[900],
        backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
        // onTap: _onItemTapped,
      ),
    );
  }
}
