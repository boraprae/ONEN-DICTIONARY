import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 10, 50),
                child: Text(
                  'ONEN',
                  style: TextStyle(
                    color: Color(0xFF4Fc3f7),
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 50),
                child: Text(
                  'DICT',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/dictionary');
                },
                child: Container(
                    width: 400,
                    height: 120,
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFFB800),
                          Color(0xFFFFAF94),
                          Color(0xFFF7DED1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'DICTIONARY',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            'assets/images/book.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 8.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/miniGame');
                },
                child: Container(
                    width: 400,
                    height: 120,
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF2A9DF4),
                          Color(0xFF9FD7FF),
                          Color(0xFFDDF0FE),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'MINI GAME',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            'assets/images/game.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 8.0,
              ),
              GestureDetector(
                onTap: () {
                 Navigator.pushNamed(context, '/teamDev');
                },
                child: Container(
                    width: 400,
                    height: 120,
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF7755BE),
                          Color(0xFFCFBDF5),
                          Color(0xFFEDE4FF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "TEAM" '\n' "DEVERLOPER",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            'assets/images/team.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
