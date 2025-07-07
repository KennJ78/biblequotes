import 'package:bible_quotes_app/World_Time/choose_location.dart';
import 'package:bible_quotes_app/World_Time/loading.dart';
import 'package:bible_quotes_app/pages/AddMusic.dart';
import 'package:bible_quotes_app/pages/Dashboard.dart';
import 'package:bible_quotes_app/pages/Listitems.dart';
import 'package:bible_quotes_app/World_Time/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/': (context) => Dashboard(),
      '/add' : (context) => Addmusic(),
      '/listitems': (context) => Listitems(),
      '/loading' : (context) => Loading(),
      '/home' : (context) => Home(),
      '/location' : (context) => ChooseLocation()

    },
  ));
}
