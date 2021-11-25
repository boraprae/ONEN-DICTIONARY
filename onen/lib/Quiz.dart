import 'package:flutter/material.dart';
import 'dart:async';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int time = 20;

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        time--;
        if (time == 0) {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('MINI GAME'),
        // ),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'MINI',
                  style: TextStyle(
                    color: Color(0xFF3FC0DF),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GAME',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                Text(
                  'Select the word which match with this meaning',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 120,
              width: 360,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF2A9DF4),
                    Color(0xFF7CC0F1),
                    Color(0xFFD7E8F4),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'to put off or reschedule for a later \ntime; to delay', //! can chang text
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD0EFFF),
                    border: Border.all(
                      color: const Color(0xFFD0EFFF),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Heartily', //! can chang text
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2A9DF4),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA6FFD1),
                    border: Border.all(
                      color: const Color(0xFFA6FFD1),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Postpone', //! can chang text
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF23BC8E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 90,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEEFB0),
                    border: Border.all(
                      color: const Color(0xFFFEEFB0),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Feeble', //! can chang text
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF2C112),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 170,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFAF94),
                    border: Border.all(
                      color: const Color(0xFFFFAF94),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Domestic', //! can chang text
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFDA3131),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Time remaining',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/clock.png',
                  width: 20.0,
                  height: 20.0,
                ),
                Text(
                  '${time}S',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
