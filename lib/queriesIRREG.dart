import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/profile.dart';

import 'dashboard.dart';
import 'notifications.dart';
//import 'package:practice1/assets/colors.dart';

class IRREGForumDetailPage extends StatefulWidget {
  const IRREGForumDetailPage({Key? key}) : super(key: key);

  @override
  _IRREGForumDetailPageState createState() => _IRREGForumDetailPageState();
}

var IRREGForumPostArr = [
  IRREGForumPostEntry("Devika Baiju :", "How do health care providers diagnose menstrual irregularities?", "Health care providers often use medical history, physical examination, blood tests, ultrasound examination, and other medical tests to diagnose menstrual irregularities."),
  IRREGForumPostEntry("Rishika Raveendran :", "What are the common treatments for menstrual irregularities?","Treatments for menstrual irregularities often vary based on the type of irregularity and certain lifestyle factors, such as whether a woman is planning to get pregnant.Treatment for menstrual irregularities that are due to anovulatory bleeding (absent periods, infrequent periods, and irregular periods) include:\n1,Oral contraceptives\n2.Cyclic progestin\n3.Treatments for an underlying disorder that is causing the menstrual problem, such as counseling and nutritional therapy for an eating disorder"),
  IRREGForumPostEntry("Meenaskshi K :", "Is it normal to have periods twice a month?", "For menstrual cycles that are 21 days long, it’s possible to have a period twice during one calendar month. However, bleeding twice or more during one menstrual cycle, blood after sex, or bleeding that stops and then starts again after several days could indicate a health issue.Hormonal imbalance, ovarian cysts, endometriosis, uterine fibroids, pelvic inflammatory disease, and cervical neoplasia can cause irregular bleeding. If there is any bloody vaginal discharge outside of a normal period, visit a health care provider to find out what’s causing it."),
  IRREGForumPostEntry("Mariya Thomas :", "Can adapting to new birth control pills cause a period delay?","Adapting to new birth control pills can cause a period delay. A pregnancy test can confirm if a period is late due to pregnancy. It may take around three months for the body to adapt to new birth control."),
];

class _IRREGForumDetailPageState extends State<IRREGForumDetailPage> {
  @override
  Widget build(BuildContext context) {
    var questionSection = Padding(
      padding: const EdgeInsets.all(3.0),
      // padding: null,
      child: Column(
        children: const <Widget>[


          //   Divider()
        ],
      ),
    );

    var responses = Container(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => IRREGForumPost(IRREGForumPostArr[index]),
          itemCount: IRREGForumPostArr.length,
        )
    );

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
            const Text('QUERIES(MENST.IRREGULARITIES)',
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
      body: Column(

        children: <Widget>[


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

class IRREGForumPostEntry{
  late final String username;
  late final String hours;

  late final String text;

  IRREGForumPostEntry(this.username, this.hours,  this.text);
}

class IRREGForumPost extends StatelessWidget {
  String addedAnswer = "";
  final IRREGForumPostEntry entry;

  IRREGForumPost(this.entry, {Key? key}) : super(key: key);

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
