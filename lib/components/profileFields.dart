import 'package:flutter/material.dart';

Widget getContainer(String text, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 15,
    width: MediaQuery.of(context).size.width / 1.2,
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 23),
    child: Align(alignment: Alignment(0, 0), child: Text(text)),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          spreadRadius: 0.35,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );
}
