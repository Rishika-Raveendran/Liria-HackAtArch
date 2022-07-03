// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// import 'navbar.dart';
import 'search_icon.dart';

class Tracker extends StatefulWidget {
  const Tracker({Key? key}) : super(key: key);

  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  // ignore: unused_field
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  var date = 5, length = 28;
  void incrementDate() {
    setState(() {
      date++;
    });
  }

  void decrementDate() {
    setState(() {
      date--;
    });
  }

  void incrementLength() {
    setState(() {
      length++;
    });
  }

  void decrementLength() {
    setState(() {
      length--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/saf3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(height: 50,),
                const Text(
                  "1. When did your last period start?",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  calendarFormat: CalendarFormat.month,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    }
                  },
                  calendarStyle: const CalendarStyle(
                      defaultTextStyle: TextStyle(color: Colors.black),
                      outsideTextStyle: TextStyle(color: Colors.black),
                      weekendTextStyle: TextStyle(color: Colors.black)),
                  headerStyle: HeaderStyle(
                      // leftChevronIcon: Icon(color:Colors.white),
                      titleCentered: true,
                      titleTextStyle: const TextStyle(color: Colors.black),
                      leftChevronIcon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white60,
                      ),
                      rightChevronIcon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white60,
                      ),
                      formatButtonDecoration: BoxDecoration(
                          color: Colors.teal[400],
                          borderRadius: BorderRadius.circular(15)),
                      formatButtonTextStyle:
                          const TextStyle(color: Colors.black)),
                ),

                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "2. How many days did your last period last?",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.remove,
                          size: 20,
                        ),
                        onPressed: decrementDate,
                        color: Colors.black),
                    Text(
                      "$date",
                      style: TextStyle(
                          color: Colors.teal[400],
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                      onPressed: incrementDate,
                      color: Colors.black,
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 30,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "3. How long is your menstrual cycle?",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.remove,
                          size: 20,
                        ),
                        onPressed: decrementLength,
                        color: Colors.black),
                    Text(
                      "$length",
                      style: TextStyle(
                          color: Colors.teal[400],
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                      onPressed: incrementLength,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),

                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () => null,
                  minWidth: 150,
                  height: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.teal[400],
                  child: const Text(
                    "Track Now",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
