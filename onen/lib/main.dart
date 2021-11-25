import 'package:flutter/material.dart';
import 'package:onen/welcomepage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/welcome',
      // routes: {
      //   '/welcome': (context) => WelcomePage(),
      home: Welcomepage(),
    ),
  );
}
