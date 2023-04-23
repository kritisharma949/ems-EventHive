import 'package:ems/Login_UI/first_page.dart';
import 'package:ems/reusbale_widgets_constants.dart';
import 'package:flutter/material.dart';

// import 'package:ems/landing_page_afterlogin.dart';
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
      // home: HomePage(),
    ),
  );
}
