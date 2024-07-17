import 'package:flutter/material.dart'; 
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{
  Widget? activeScreen;

  @override
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();

  }

  switchScreen(){
    setState((){
      activeScreen = const QuestionsScreen();
    });
  }

  
  Widget build(context){
    return MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}