import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';


void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body : Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Color.fromARGB(255, 75, 15, 112),
              Color.fromARGB(255, 134, 53, 196),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );

}