import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/profile.dart';

import 'dashboard.dart';
import 'notifications.dart';
//import 'package:practice1/assets/colors.dart';

class ForumDetailPage extends StatefulWidget {
  const ForumDetailPage({Key? key}) : super(key: key);

  @override
  _ForumDetailPageState createState() => _ForumDetailPageState();
}

var ForumPostArr = [
  ForumPostEntry("User1", "2 Days ago", "Hello,\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ForumPostEntry("User2", "23 Hours ago", "Pellentesque justo metus, finibus porttitor consequat vitae, tincidunt vitae quam. Vestibulum molestie sem diam. Nullam pretium semper tempus. Maecenas lobortis lacus nunc, id lacinia nunc imperdiet tempor. Mauris mi ipsum, finibus consectetur eleifend a, maximus eget lorem. Praesent a magna nibh. In congue sapien sed velit mattis sodales. Nam tempus pulvinar metus, in gravida elit tincidunt in. Curabitur sed sapien commodo, fringilla tortor eu, accumsan est. Proin tincidunt convallis dolor, a faucibus sapien auctor sodales. Duis vitae dapibus metus. Nulla sit amet porta ipsum, posuere tempor tortor.\n\nCurabitur mauris dolor, cursus et mi id, mattis sagittis velit. Duis eleifend mi et ante aliquam elementum. Ut feugiat diam enim, at placerat elit semper vitae. Phasellus vulputate quis ex eu dictum. Cras sapien magna, faucibus at lacus vel, faucibus viverra lorem. Phasellus quis dui tristique, ultricies velit non, cursus lectus. Suspendisse neque nisl, vestibulum non dui in, vulputate placerat elit. Sed at convallis mauris, eu blandit dolor. Vivamus suscipit iaculis erat eu condimentum. Aliquam erat volutpat. Curabitur posuere commodo arcu vel consectetur."),
  ForumPostEntry("User3", "2 Days ago", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ForumPostEntry("User4", "2 Days ago","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
];

class _ForumDetailPageState extends State<ForumDetailPage> {
  @override
  Widget build(BuildContext context) {
    var questionSection = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const <Widget>[


          Divider()
        ],
      ),
    );

    var responses = Container(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => ForumPost(ForumPostArr[index]),
          itemCount: ForumPostArr.length,
        )
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(237, 255, 242, 1),

      body: Column(

        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
      const Text("QUERIES",
                  style: TextStyle(
                     fontSize: 18, fontWeight: FontWeight.bold)),
          questionSection,
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: responses,
              ))
        ],
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

class ForumPostEntry{
  final String username;
  final String hours;

  final String text;

  ForumPostEntry(this.username, this.hours,  this.text);
}

class ForumPost extends StatelessWidget {
  String addedAnswer = "";
  final ForumPostEntry entry;

  ForumPost(this.entry);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
       // color:Color.fromRGBO(19, 61, 28, 1),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(7.0),

            decoration: const BoxDecoration(
              color: Color.fromRGBO(19, 61, 28, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: Row(
              children: <Widget>[

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10.0,bottom: 10.0,top: 10.0,right: 10.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          entry.username,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(242, 236, 236, 1))
                      ),
                      const SizedBox(height: 10),
                      Text(
                          entry.hours,
                          style: const TextStyle(

                              color: Color.fromRGBO(242, 236, 236, 1))
                      ),
                    ],
                  ),
                  )
                ),

              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            //  color: Colors.white,
            ),
          //  padding: const EdgeInsets.only(left: 40, right: 20),
            margin: const EdgeInsets.only(top: 10),
            width: 350,
            child: TextFormField(
              onChanged: (value) {
                addedAnswer = value;

                // if (kDebugMode) {
                //   print(addedAnswer);
                // }
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter your point to be added',
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 2.0,right: 2.0,bottom: 2.0),
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              //  color: Colors.grey[200],
                borderRadius: BorderRadius.only(bottomLeft :Radius.circular(20.0),bottomRight :Radius.circular(20.0))
            ),


            child:Column(
    children: [
      const Text('Currently available answer',
            style: TextStyle(
                fontWeight: FontWeight.w500,)),
      const SizedBox(height: 10),
      Text(entry.text),
    ],
    )

          ),
        ],
      ),
    );
  }
}
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: const Color.fromRGBO(237, 255, 242, 1),
//     body: Center(
//       child: Container(
//         padding: EdgeInsets.only(
//             bottom: 20,
//             left: 20,
//             right: 20,
//             top: MediaQuery.of(context).size.height / 15),
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text("NOTIFICATIONS",
//                   style: TextStyle(
//                       fontSize: 18, fontWeight: FontWeight.bold)),
//               Expanded(
//
//                 //padding: EdgeInsets.all(20),
//                 child: ListView.builder(
//                     itemCount: notifs.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                           child: InkWell(
//                             // ignore: avoid_unnecessary_containers
//                               child: Container(
//                                   child: Column(
//                                       crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           notifs[index]['message'],
//                                           style: const TextStyle(
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                         Text(
//                                           Jiffy(notifs[index]['time']).fromNow(),
//                                           style: TextStyle(
//                                               fontSize: 10,
//                                               color: Colors.teal[800]),
//                                         )
//                                       ]))),
//                           padding: EdgeInsets.all(20),
//                           margin: EdgeInsets.only(top: 20),
//                           decoration: BoxDecoration(
//                             color: Colors.teal[50],
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.teal.withOpacity(0.25),
//                                 spreadRadius: 0.25,
//                                 blurRadius: 4,
//                                 offset: const Offset(
//                                     0, 3), // changes position of shadow
//                               ),
//                             ],
//                           ));
//                     }),
//               )
//             ]),
//       ),),
//     bottomNavigationBar: BottomAppBar(
//       color:  const Color.fromRGBO(237, 255, 242, 1),
//       child: Container(
//         margin: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
//         height: 50.0,
//         width: double.maxFinite,
//         decoration: BoxDecoration(
//           color: const Color.fromRGBO(191, 234, 212, 1),
//           borderRadius: BorderRadius.circular(100),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             // ignore: prefer_const_constructors
//             IconButton(
//               icon: const Icon(Icons.home),
//               onPressed: () {
//                 Get.to(const Dashboard());
//               },
//             ),
//             // ignore: prefer_const_constructors
//             IconButton(
//               icon: const Icon(Icons.notification_important),
//               onPressed: () {
//                 Get.to(const NotificationScreen());
//               },
//             ),
//
//             IconButton(
//               icon: const Icon(Icons.person),
//               onPressed: () {
//                 Get.to(const ProfileScreen());
//               },
//             ),
//           ],
//         ),
//       ),
//     ),);
// }
// }
