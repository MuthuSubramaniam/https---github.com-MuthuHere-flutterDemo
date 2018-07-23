import 'package:flutter/material.dart';
import 'package:flutter_app/UI/question_text.dart';
import '../UI/answer_button.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => print("Your answer is true")),
            new QuestionText("Pizza is nice", 1),
            new AnswerButton(false, () => print("Your answer is false")),
          ],
        )
      ],
    );
  }
}
