import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
// import 'home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:liria/home.dart';

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
          // ignore: avoid_unnecessary_containers
          // Container(
          //     child: BackdropFilter(
          //   filter: ImageFilter.blur(
          //     sigmaX: 7.0,
          //     sigmaY: 7.0,
          //   ),
          //   // ignore: avoid_unnecessary_containers, prefer_const_constructors
          //   child: Container(child: Text(".")),
          // )),
          Align(
              alignment: const Alignment(0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Get.toNamed('/register'),
                      child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          width: 270,
                          height: 50,
                          child: const Align(
                              alignment: Alignment(0, 0),
                              child: Text("Create an Account",
                                  style: TextStyle(color: Colors.white)))),
                    ),
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
                                    style: TextStyle(color: Colors.white))
                              ]),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(70, 71, 221, 1),
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
                                    style: TextStyle(color: Colors.white))
                              ]),
                          decoration: BoxDecoration(
                              // ignore: prefer_const_constructors
                              color: Color.fromRGBO(70, 71, 221, 1),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(height: 30),
                    const Text("OR LOGIN WITH PASSWORD",
                        style:
                            TextStyle(color: Color.fromRGBO(161, 164, 178, 1))),
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
                          labelText: 'Enter your email',
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
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const InkWell(
                          child: Text("I have read the Privacy Policy",
                              style: TextStyle(color: Colors.blue))),
                      Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
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
                    InkWell(
                        onTap: () async {
                          try {
                            final user = await _auth.signInWithEmailAndPassword(
                                email: email, password: password);
                            // ignore: unnecessary_null_comparison
                            if (user != null) {
                              Get.offAll(const HomeScreen());
                            }
                          } catch (e) {
                            // ignore: avoid_print
                            print(e);
                          }
                        },
                        child: Container(
                            width: 270,
                            height: 50,
                            child: const Align(
                                alignment: Alignment(0, 0),
                                child: Text("Login")),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(70, 71, 221, 1),
                                borderRadius: BorderRadius.circular(20))))
                  ]))
        ],
      ),
    ));
  }
}
