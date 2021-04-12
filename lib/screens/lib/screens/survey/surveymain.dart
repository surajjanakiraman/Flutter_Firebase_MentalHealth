import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class surveymain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<surveymain> {
  final _questions = const [
    {
      'questionText': 'Q1. Using a telephone in public \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q1. Using a telephone in public \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q2. Participating in a small group activity \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q2. Participating in a small group activity \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q3. Eating in public \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q3. Eating in public \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q4. Drinking with others \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q4. Drinking with others \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q5. Talking to someone in authority \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q5. Talking to someone in authority \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q6. Acting, performing, or speaking in front of an audience \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q6. Acting, performing, or speaking in front of an audience \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q7. Going to a party \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q7. Going to a party \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q8. Working while being observed \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q8. Working while being observed \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q9. Writing while being observed \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q9. Writing while being observed \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q10. Calling someone you do not know very well \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q10. Calling someone you do not know very well \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q11. Talking face to face with someone you do not know very well \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q11. Talking face to face with someone you do not know very well \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q12. Meeting strangers \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q12. Meeting strangers \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q13. Urinating in a public bathroom \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q13. Urinating in a public bathroom \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q14. Entering a room when others are already seated \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q14. Entering a room when others are already seated \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q15. Being the center of attention \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q15. Being the center of attention \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q16. Speaking up at a meeting \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q16. Speaking up at a meeting \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q17. Taking a test of your ability, skill, or knowledge \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q17. Taking a test of your ability, skill, or knowledge \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q18. Expressing disagreement or disapproval to someone you do not know very well \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q18. Expressing disagreement or disapproval to someone you do not know very well \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q19. Looking someone who you do not know very well straight in the eyes \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q19. Looking someone who you do not know very well straight in the eyes \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q20. Giving a prepared oral talk to a group \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q20. Giving a prepared oral talk to a group \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q21. Trying to make acquaintance for the purpose of a romantic/sexual relationship \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q21. Trying to make acquaintance for the purpose of a romantic/sexual relationship \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q22. Returning goods to a store for a refund \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q22. Returning goods to a store for a refund \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q23. Giving a party \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q23. Giving a party \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
    {
      'questionText': 'Q24. Resisting a high pressure sales person \nFear',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
      ],
    },
    {
      'questionText': 'Q24. Resisting a high pressure sales person \nAvoidance',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Occasionally', 'score': 1},
        {'text': 'Often', 'score': 2},
        {'text': 'Usually', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Solution challenge 2021'),
          backgroundColor: Color(0xFF1C4EA7),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
