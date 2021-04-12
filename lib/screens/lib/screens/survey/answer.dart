import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Color(0xFF2843BB),
        hoverColor: Color(0xFFD9C24E),
        textColor: Colors.white,
        child: new Text(
          answerText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
