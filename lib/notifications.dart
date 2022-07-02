import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notifs = [];
  @override
  void initState() {
    super.initState();
    notifs = [
      {
        'id': 1,
        'message':
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut ",
        'time': "2021-05-31"
      },
      {
        'id': 2,
        'message':
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut ",
        'time': "2022-06-29"
      },
      {
        'id': 3,
        'message':
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut ",
        'time': "2022-06-29"
      },
      {
        'id': 4,
        'message':
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut ",
        'time': "2022-06-30"
      },
      {
        'id': 5,
        'message':
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut",
        'time': "2022-08-30"
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
        body: Center(
          child: Container(
              padding: EdgeInsets.only(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  top: MediaQuery.of(context).size.height / 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("NOTIFICATIONS",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Expanded(
                      //padding: EdgeInsets.all(20),
                      child: ListView.builder(
                          itemCount: notifs.length,
                          itemBuilder: (context, index) {
                            return Container(
                                child: InkWell(
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                      Text(
                                        notifs[index]['message'],
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        Jiffy(notifs[index]['time']).fromNow(),
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.teal[800]),
                                      )
                                    ]))),
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(top: 20),
                                decoration: BoxDecoration(
                                  color: Colors.teal[50],
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.teal.withOpacity(0.25),
                                      spreadRadius: 0.25,
                                      blurRadius: 4,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ));
                          }),
                    )
                  ])),
        ));
  }
}
