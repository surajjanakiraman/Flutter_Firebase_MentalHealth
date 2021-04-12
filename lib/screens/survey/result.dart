import 'package:flutter/material.dart';
import 'package:flutter_side_menu/screens/main_menu.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 95) {
      resultText = 'You suffer from a very severe social anxiety';
      print(resultScore);
    } else if (resultScore >= 80 && resultScore <= 94) {
      resultText = 'You suffer from a severe social anxiety';
      print(resultScore);
    } else if (resultScore >= 65 && resultScore <= 79) {
      resultText = 'You suffer from a marked social anxiety';
      print(resultScore);
    } else if (resultScore >= 50 && resultScore <= 64) {
      resultText = 'You suffer from a moderate social anxiety';
      print(resultScore);
    } else if (resultScore >= 30 && resultScore <= 49) {
      resultText = 'You suffer from a mild social anxiety';
      print(resultScore);
    } else if (resultScore >= 0 && resultScore <= 29) {
      resultText = 'You do not suffer from social anxiety';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          // ignore: deprecated_member_use
          FlatButton(
            child: Text("Click here to go back"),
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MainMenu()));
            },
          ),
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
