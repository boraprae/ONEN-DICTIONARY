import 'dart:js';

import 'package:flutter/material.dart';
import 'package:onen/welcomepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/welcome',
      // routes: {
      //   '/welcome': (context) => WelcomePage(),
      // },
      initialRoute: '/MainMenu',
      routes: {
        '/welcome': (context) => Welcomepage(),
      },
    ),
  );
}
