import 'package:flutter/material.dart';
// import 'package:onen/Minigame.dart';
import 'package:onen/miniGame/Quiz.dart';
import 'package:onen/miniGame/Replaypage.dart';
import 'package:onen/miniGame/Minigame.dart';
import 'package:onen/dictionary.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/quiz',
    routes: {
      '/dictionary': (context) => Dictionary(),
      '/quiz': (context) => Quiz(),
    },
  ));
}
