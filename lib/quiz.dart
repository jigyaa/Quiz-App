import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart'; 
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen(){
    setState((){
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        //selectedAnswers = [];
        activeScreen='results-screen';
      });

    }
  }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen=='questions-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if(activeScreen=='results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers,);
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}