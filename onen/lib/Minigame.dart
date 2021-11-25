import 'package:flutter/material.dart';

class Paly extends StatefulWidget {
  const Paly({Key? key}) : super(key: key);

  @override
  _PalyState createState() => _PalyState();
}

class _PalyState extends State<Paly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.logout_outlined,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ],
      // ),
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
                height: 140.0,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 115.0),
                    child: IconButton(
                      padding: const EdgeInsets.all(0.0),
                      color: const Color(0xFF70BBF2),
                      icon: const Icon(Icons.play_circle_fill_outlined,
                          size: 140.0),
                      onPressed: (){}
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
