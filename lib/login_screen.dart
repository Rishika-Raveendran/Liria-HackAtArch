import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
// import 'home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:liria/health.dart';
import 'package:liria/home.dart';
import 'package:liria/tracker.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final _auth = FirebaseAuth.instance;

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            /* Image(
            image: const AssetImage("images/splash.jpg"),
            fit: BoxFit.cover,

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          // ignore: avoid_unnecessary_containers
           Container(

             color: Colors.white.withOpacity(0.5),
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
           ),
          //   // ignore: avoid_unnecessary_containers, prefer_const_constructors
          //   child: Container(child: Text(".")),
          // )),


          */
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/splash.jpg"),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Center(
                  child: Card(
                    elevation: 10,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Align(
                alignment: const Alignment(0, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            // ignore: prefer_const_constructors
                            margin: EdgeInsets.only(top: 10),
                            // ignore: prefer_const_constructors
                            alignment: Alignment(0, 0),
                            width: 270,
                            height: 50,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 10),
                                  FaIcon(FontAwesomeIcons.facebook,
                                      color: Colors.white),
                                  SizedBox(width: 10),
                                  Text("Continue with Facebook",
                                      style: TextStyle(color: Colors.black))
                                ]),
                            decoration: BoxDecoration(
                                color:
                                    const Color.fromRGBO(117, 117, 117, 0.90),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 270,
                            height: 50,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 10),
                                  FaIcon(FontAwesomeIcons.google,
                                      color: Colors.white),
                                  SizedBox(width: 15),
                                  Text("Continue with Google",
                                      style: TextStyle(color: Colors.black))
                                ]),
                            decoration: BoxDecoration(
                                // ignore: prefer_const_constructors
                                color:
                                    const Color.fromRGBO(117, 117, 117, 0.90),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      const SizedBox(height: 30),
                      const Text("OR",
                          style:
                              TextStyle(color: Color.fromRGBO(51, 51, 51, 1))),
                      const SizedBox(height: 20),
                      const Text("Continue with credentials",
                          style:
                              TextStyle(color: Color.fromRGBO(51, 51, 51, 1))),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.only(left: 40, right: 20),
                        margin: const EdgeInsets.only(top: 10),
                        width: 350,
                        child: TextFormField(
                          onChanged: (value) {
                            email = value;
                          },
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Enter your username',
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.only(left: 40, right: 20),
                          width: 350,
                          child: TextFormField(
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Enter your password',
                              suffixIcon: Icon(Icons.visibility_off),
                            ),
                            obscureText: true,
                          )),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const InkWell(
                                child: Text("I have read the Privacy Policy",
                                    style: TextStyle(color: Colors.blue))),
                            Theme(
                                data: ThemeData(
                                    unselectedWidgetColor: Colors.white),
                                child: Checkbox(
                                  value: _checkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkbox = !_checkbox;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  checkColor: Colors.blue,
                                ))
                          ]),
                      const SizedBox(height: 40),
                      /*  InkWell(
                        onTap: () async {
                          try {
                            //   final user = await _auth.signInWithEmailAndPassword(
                            //       email: email, password: password);
                            //   // ignore: unnecessary_null_comparison
                            //   if (user != null) {
                            Get.offAll(const HomeScreen());
                            // }
                          } catch (e) {
                            // ignore: avoid_print
                            print(e);
                          }
                        },
                      ), */
                      InkWell(
                          onTap: () => {Get.offAll(const HomeScreen())},
                          child: Container(
                              width: 270,
                              height: 50,
                              child: const Align(
                                alignment: Alignment(0, 0),
                                child: Text("Login",
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(242, 236, 236, 1))),
                              ),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(19, 61, 28, 1),
                                  borderRadius: BorderRadius.circular(20))))
                    ]))
          ],
        ),
      ),
    );
  }
}
