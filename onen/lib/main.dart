import 'package:flutter/material.dart';
import 'package:onen/dictionary.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/dictionary',
    routes: {
      '/dictionary': (context) => Dictionary(),
    },
  ));
}
