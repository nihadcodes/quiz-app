import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currenQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currenQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          ...currenQuestion.answers.map((answer){
            return AnswerButton(answerText: answer, onTap: () {});
          })
        ],
      ),
    );
  }
}
