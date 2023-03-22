import 'package:ems/first_page.dart';
import 'package:ems/reusbale_widgets_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: kThemeColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: kThemeColor, //<-- SEE HERE
        ),
      ),
      home: MyApp(),
      //  home: MyHomePage(),
    ),
  );
}
