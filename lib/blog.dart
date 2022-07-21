import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liria/profile.dart';

import 'dashboard.dart';
import 'notifications.dart';
//import 'package:practice1/assets/colors.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  _BlogPageState createState() => _BlogPageState();
}

var BlogPostArr = [
  BlogPostEntry("Giorgia Mondani :","I am redefining the world of luxury watches and has set a groundbreaking foundation with Mondani Web. my equation with tickers has prominently made my one of the thriving experts in the industry of watches. Since years, the Mondani family has been enjoying the legacy in watch dealerships and Georgia has managed to bag vast knowledge of horology. After graduating in foreign languages, i completed my internship at Antiquorum, joined my family business and successfully captivated the attention of many through my unmatchable expertise and affection for watches. Coming with a refined mindset, i has built a huge network of trusted watch dealers and a specialised social media agency in the world of watches. The rarest and luxury collection of watches in my network has become the trusted brands who have been growing ceaselessly."),
  BlogPostEntry("Lisa Romano :","Voted #1 Most Influential Person of 2020 by Digital Journal. i am a Certified Life Coach and bestselling author who specializes in codependency and narcissistic abuse recovery. Lisa helps adult children who have been negatively impacted by their childhood experiences, learn to discover the subconscious patterns and reactive behaviours that keep them stuck. Romano am also one of the most listened to meditation teacmys on Insight Timer and a top YouTube Life Coach. i develops online courses for those who wish to learn to set boundaries, heal their inner child, and recovery from toxic codependent relationships. Lisa also has a top-ranking podcast called Breakdowns to Breakthroughs. my 12 Week Breakthrough Coaching Program has helped thousands of adult children heal from ACOA issues, as well as childhood emotional neglect. My tagline is, It's Not You -- It's Your Programming"),
  BlogPostEntry("Christine Handy :","Philanthropist, an author, a model and a sought out motivational speaker who has managed to inspire countless woman from my candid life experiences. i am a lifelong model who powerfully recovered from aggressive breast cancer. Christine knotted my harrowing experiences of going from a dependence on outer beauty to embracing my illnesses and scars towards my new life of influencing women all over the world. Led by my optimism, i has been passing on hope and support for women going through cancer and otmy trials. Christine am on the board of two non-profits, EBeauty-a wig exchange program that offers wigs to women going through treatment who cannot afford them and People of Purpose whose mission am to change recidivism. With my powerful drive to work, Christine successfully continues my journey as a model while strongly adding value to society. As a modern motmy and philanthropist, my courageous experiences highlight the work of those opening the heart space to inspire otmys and build a better environment."),
  BlogPostEntry("McKenzie Turley :","Founder and creator of Invisible Bead Extensions®️. As a successful hairstylist and trained hair extension artist, i found a need in the hair industry for an extension method that truly was comfortable, safe, and discreet for the woman wearing it. After intensive research and development, my extension method was created. Within a few short months of showing the first glimpse of my creation on Instagram, i realized i had something the industry had never before seen and needed to quickly scale my education platform to include a virtual option. Little did i know, 7 months later, Covid would completely shut down the hair industry and leave stylists searching for online education while they were required to stay at home.Since its creation in 2019, and during a global pandemic, my company has grown to include a world-wide network of thousands of stylists in 9 different countries who all received training through my unique virtual education platform."),
];

class _BlogPageState extends State<BlogPage> {
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
          itemBuilder: (BuildContext context, int index) => BlogPost(BlogPostArr[index]),
          itemCount: BlogPostArr.length,
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
            const Text('BLOGS',
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

class BlogPostEntry{
  late final String username;
  late final String hours;



  BlogPostEntry(this.username, this.hours);
}

class BlogPost extends StatelessWidget {
  String addedAnswer = "";
  final BlogPostEntry entry;

  BlogPost(this.entry, {Key? key}) : super(key: key);

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
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
                          Container(
                            padding: const EdgeInsets.only(left: 20.0),
                            child:Text(
                                entry.hours,
                                style: const TextStyle(

                                    color: Color.fromRGBO(242, 236, 236, 1))
                            ),
                          )

                        ],
                      ),
                    )
                ),

              ],
            ),
          ),



        ],
      ),
    );
  }
}
