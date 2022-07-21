import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/profile.dart';

import 'dashboard.dart';
import 'notifications.dart';
//import 'package:practice1/assets/colors.dart';

class PPDForumDetailPage extends StatefulWidget {
  const PPDForumDetailPage({Key? key}) : super(key: key);

  @override
  _PPDForumDetailPageState createState() => _PPDForumDetailPageState();
}

var ppdForumPostArr = [
  PPDForumPostEntry("Devika Baiju :", "What are the specific symptoms of postpartum depression, postpartum anxiety and postpartum OCD?  How do I know if I have one of them?", "There are many different symptoms and you may have only some of them.  These are not one-size-fits-all illnesses – every mom is an individual.  Read The Symptoms of Postpartum Depression & Anxiety (In Plain Mama English), which will give you a full list of possible symptoms.   If you have some of the symptoms listed, and have had them for two weeks or more, call your doctor.  What you are going through is temporary and treatable with professional help. This can be fixed."),
  PPDForumPostEntry("Rishika Raveendran :", "Can you get postpartum depression or anxiety much later after the birth of your child?  What if you get it when you are six months postpartum, or ten?", "Postpartum depression can occur any time in the first 12 months after birth.  If your doctor says you can only get postpartum depression in the first few weeks or months after birth, he or she is wrong. For more on this, read Does Postpartum Depression Only Occur in the Weeks After Baby is Born?  Also, you can get PPD with any child, regardless of whether it is your first or fifth or somewhere in between."),
  PPDForumPostEntry("Meenaskshi K :", "Do I have to take medication to be treated for postpartum depression or anxiety?", "No.  There are a variety of treatments for PPD, postpartum anxiety, postpartum OCD, etc, including therapy and/or medication.  You should work with your doctor to identify the best treatment options for you, and then be open to trying other things if the methods you choose don’t work."),
  PPDForumPostEntry("Rakesh Ravi :", "I’m a dad or partner.  How do I help someone going through PPD?","First, don’t panic. What your wife or partner is going through is a common illness.  She will get back to the person you know, with your support and patience.We’d also recommend checking out Karen Kleiman’s book “The Postpartum Husband.The most important thing is to be 100% supportive. Let her know that you believe in her, and help her follow through on her doctor’s recommendations."),
];

class _PPDForumDetailPageState extends State<PPDForumDetailPage> {
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
          itemBuilder: (BuildContext context, int index) => PPDForumPost(ppdForumPostArr[index]),
          itemCount: ppdForumPostArr.length,
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
            const Text('QUERIES(PPD)',
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

class PPDForumPostEntry{
  late final String username;
  late final String hours;

  late final String text;

  PPDForumPostEntry(this.username, this.hours,  this.text);
}

class PPDForumPost extends StatelessWidget {
  String addedAnswer = "";
  final PPDForumPostEntry entry;

  PPDForumPost(this.entry, {Key? key}) : super(key: key);

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
