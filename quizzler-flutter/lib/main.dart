import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

const Icon correctIcon = Icon(
  Icons.check,
  color: Colors.green,
);

const Icon wrongIcon = Icon(
  Icons.close,
  color: Colors.red,
);

class QuizzQuestion {
  String question;
  bool answer;

  QuizzQuestion({String q, bool a, Icon myIcon}) {
    question = q;
    answer = a;
  }

  bool checkAnswer(bool response) => response == answer;
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<QuizzQuestion> questions = [
    QuizzQuestion(
        q: 'You can lead a cow down stairs but not up stairs.', a: false),
    QuizzQuestion(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    QuizzQuestion(q: 'A slug\'s blood is green.', a: true),
  ];
  int questionNum = 0;

  void increesQuestionNum() => setState(() => questionNum++);

  void addValueToScore(bool val) =>
      setState(() => scoreKeeper.add(val ? correctIcon : wrongIcon));

  void takeResponse({bool result}) {
    addValueToScore(result);
    increesQuestionNum();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNum].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () => takeResponse(
                  result: questions[questionNum].checkAnswer(true)),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () => takeResponse(
                  result: questions[questionNum].checkAnswer(false)),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
