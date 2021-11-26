import 'package:flutter/material.dart';
import 'package:onen/constantColor.dart';

class PlayMiniGame extends StatefulWidget {
  const PlayMiniGame({Key? key}) : super(key: key);

  @override
  _PlayMiniGameState createState() => _PlayMiniGameState();
}

class _PlayMiniGameState extends State<PlayMiniGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 50, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'MINI',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: blueSky,
                      ),
                    ),
                    const Text(
                      ' GAME',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 140.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      child: Container(
                    child: FittedBox(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/quiz');
                        },
                        icon: const Icon(Icons.play_circle_fill_outlined),
                        color: const Color(0xFFDDF3FE),
                      ),
                    ),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFF000000),
                            blurRadius: 7,
                            offset: Offset(
                              2,
                              2,
                            )),
                      ],
                      color: const Color(0xFF7CC0F1),
                      borderRadius: BorderRadius.circular(180),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'PLAY',
                    style: TextStyle(
                        color: Color(0xFF70BBF2),
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
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
