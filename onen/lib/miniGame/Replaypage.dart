import 'package:flutter/material.dart';

class Replay extends StatefulWidget {
  const Replay({Key? key}) : super(key: key);




  @override
  _ReplayState createState() => _ReplayState();
}

class _ReplayState extends State<Replay> {
  int score = 0;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    score = data['score'];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'MINI',
                      style: TextStyle(
                          color: Color(0xFF3FC0DF),
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'GAME',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'BooYa!!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Color(0xFFFB7044),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/dimon.png',
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Score = $score',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Color(0xFF000000),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      child: Container(
                    child: FittedBox(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/miniGame');
                        },
                        icon: const Icon(Icons.replay_outlined),
                        color: const Color(0xFFDDF3FE),
                      ),
                    ),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7CC0F1),
                      borderRadius: BorderRadius.circular(180),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'REPLAY',
                    style: TextStyle(
                        color: Color(0xFF70BBF2),
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.exit_to_app_outlined),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      //! button Exit to main menu
                      Navigator.pushNamed(context, '/mainMenu');
                    },
                    child: const Text(
                      'MAIN MENU',
                      style: TextStyle(
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
