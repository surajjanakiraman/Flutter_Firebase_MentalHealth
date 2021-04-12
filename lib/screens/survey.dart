import 'package:flutter/material.dart';
import 'survey/surveymain.dart';

class Survey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: AlertWithButtons())));
  }
}

class AlertWithButtons extends StatefulWidget {
  AlertWithButtonsWidget createState() => AlertWithButtonsWidget();
}

class AlertWithButtonsWidget extends State {
  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('You are about to take the survey'),
          content: Text(
              "Are You Sure Want To Proceed? This Survey will take around 15 minutes."),
          actions: <Widget>[
            // ignore: deprecated_member_use
            FlatButton(
              child: Text("YES"),
              onPressed: () {
                //Put your code here which you want to execute on No button click.
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => surveymain()));
              },
            ),
            // ignore: deprecated_member_use
            FlatButton(
              child: Text("NO"),
              onPressed: () {
                //Put your code here which you want to execute on Cancel button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () => showAlert(context),
          child: Text('Take the survey here'),
          textColor: Colors.white,
          color: Colors.green,
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
    );
  }
}
