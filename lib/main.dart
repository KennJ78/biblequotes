import 'package:bible_quotes_app/pages/AddMusic.dart';
import 'package:bible_quotes_app/pages/Dashboard.dart';
import 'package:bible_quotes_app/pages/Listitems.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Dashboard(),
      '/add' : (context) => Addmusic(),
      '/listitems': (context) => Listitems(),
    },
  ));
}
