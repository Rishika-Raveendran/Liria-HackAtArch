import 'package:flutter/material.dart';
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
            InkWell(
              onTap: () {
                print("Cycle");
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
          ],
        ),
      ),
    );
  }
}
