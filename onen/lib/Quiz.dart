import 'package:flutter/material.dart';
import 'dart:async';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int time = 20;
  String question = 'to put off or reschedule for a later \ntime; to delay';
  String choice1 = 'Heartily';
  String choice2 = 'Postpone';
  String choice3 = 'Feeble';
  String choice4 = 'Domestic';
  String incorrect = 'Incorrect';
  String content2 = 'You don’t get the score \n for this question.';

  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        time--;
        if (time == 0) {
          timer.cancel();
        }
      });
    });
  }

//! -------show  alert Correct
  Future showAlertCorrect() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Correct!',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF18AC00)),
                  ),
                ],
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('You got 1 more point!'),
                ],
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Next Question',
                        style: TextStyle(
                          color: Color(0xFF2A9DF4),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color(0xFF2A9DF4))
                  ],
                )
              ],
            ),
          ],
        );
      },
    );
  }

  //! -------show  alert Incorrect
  Future showAlertInCorrect() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'InCorrect!',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFC93B3B)),
                  ),
                ],
              ),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('You don’t get the score for this \n question.'),
                ],
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Next Question',
                        style: TextStyle(
                          color: Color(0xFF2A9DF4),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color(0xFF2A9DF4))
                  ],
                )
              ],
            ),
          ],
        );
      },
    );
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
                children: [
                  Text(
                    '${question}', //! text can chang
                    style: const TextStyle(
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
                GestureDetector(
                  onTap: () {
                    //* ---------------------Button answer------------------------
                    showAlertInCorrect();
                  },
                  child: Container(
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
                      children: [
                        Text(
                          '${choice1}', //! text can chang
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2A9DF4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //* ---------------------Button answer------------------------
                  },
                  child: Container(
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
                      children: [
                        Text(
                          '${choice2}', //! can chang text
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF23BC8E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    //* ---------------------Button answer------------------------
                  },
                  child: Container(
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
                      children: [
                        Text(
                          '${choice3}', //! can chang text
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF2C112),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //* ---------------------Button answer------------------------
                  },
                  child: Container(
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
                      children: [
                        Text(
                          '${choice4}', //! can chang text
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDA3131),
                          ),
                        ),
                      ],
                    ),
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
                const SizedBox(
                  width: 5.0,
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
