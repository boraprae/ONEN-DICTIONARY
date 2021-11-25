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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      child: Container(
                    child: FittedBox(
                      child: IconButton(
                        onPressed: () {
                          //! Button play
                          // print('1');
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
                            offset: Offset(2, 2,)),
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
            ],
          ),
        ),
      ),
    );
  }
}
