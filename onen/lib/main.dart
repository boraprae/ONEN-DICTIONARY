import 'package:flutter/material.dart';
import 'package:onen/mainMenu.dart';
// import 'package:onen/Minigame.dart';
import 'package:onen/miniGame/quiz.dart';
import 'package:onen/miniGame/replaypage.dart';
import 'package:onen/miniGame/minigame.dart';
import 'package:onen/dictionary.dart';
import 'package:onen/teamDeverlopment.dart';
import 'package:path/path.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/mainMenu',
    routes: {
      '/mainMenu': (context) => MainMenu(),
      '/teamDev': (context) => TeamDeverlopment(),
      '/miniGame': (context) => PlayMiniGame(),
      '/dictionary': (context) => Dictionary(),
      '/quiz': (context) => Quiz(),
      '/replayMiniGame': (context) => Replay(),
    },
  ));
}
