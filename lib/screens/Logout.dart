import 'package:flutter/material.dart';
import '../main.dart';

class Logout extends StatelessWidget {
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
          title: Text('You are about to logout'),
          content: Text("Are You Sure Want To Logout?"),
          actions: <Widget>[
            FlatButton(
              child: Text("YES"),
              onPressed: () {
                Text("""Goodbye""");

                //Put your code here which you want to execute on No button click.
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginDemo()));
              },
            ),
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
        child: RaisedButton(
          onPressed: () => showAlert(context),
          child: Text('Click here to Logout'),
          textColor: Colors.white,
          color: Colors.green,
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
    );
  }
}
