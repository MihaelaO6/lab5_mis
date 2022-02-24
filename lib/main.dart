import 'package:flutter/material.dart';
import './page.dart';
//import './student.dart';
import './login.dart';

void main() {
  runApp(MaterialApp(
    // Application name
    title: 'Student Organizer',
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'page': (context) => MyHomePage(
            title: 'Student Organizer',
            elements: [
              "Termin1",
              "Termin2",
              "Termin3",
              "Termin4",
              "Termin5",
              "Termin6",
              "Termin7",
              "Termin8",
              "Termin9",
              "Termin10"
            ],
          ),
    },

    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    //Calendar(),
    // A widget which will be started on application startup
  ));
}
