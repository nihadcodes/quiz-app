import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {

   return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen();
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }
  @override
  Widget build(context) {
    return   MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(225, 78, 13, 151),
                    Color.fromARGB(225, 107, 15, 168),


                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                )),
            child: activeScreen,

        ),
      ),
    );
  }
}