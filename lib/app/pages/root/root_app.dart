import 'package:flutter/material.dart';
import 'package:uichalleges/app/pages/home/home_page.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(8),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(style: BorderStyle.none),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
