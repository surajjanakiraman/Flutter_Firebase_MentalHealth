import 'package:flutter/material.dart';

class Hotline extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue[500],
          Colors.blue[400],
          Colors.blue[300],
        ])),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "Hotline Numbers",
              style: TextStyle(fontSize: 40, color: Colors.black),
            )),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'Disaster Distress Hotline: 1-800-985-5990',
                  style: TextStyle(fontSize: 20, color: Colors.blue[500]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'Inclement Weather Hotline: 1-512-463-5751',
                  style: TextStyle(fontSize: 20, color: Colors.blue[200]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'National Emergency Hotline: 911',
                  style: TextStyle(fontSize: 20, color: Colors.blue[500]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'State Bar of Texas Disaster Hotline: 1-800-985-5990',
                  style: TextStyle(fontSize: 20, color: Colors.blue[200]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  '"Redcross Hotline: 143"',
                  style: TextStyle(fontSize: 20, color: Colors.blue[500]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'Elder Care Locator: 1-800-677-1116',
                  style: TextStyle(fontSize: 20, color: Colors.blue[200]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'Suicide Hotline: 1-800-SUICIDE',
                  style: TextStyle(fontSize: 20, color: Colors.blue[500]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'United Way Crisis Helpline: 1-800-233-HELP',
                  style: TextStyle(fontSize: 20, color: Colors.blue[200]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'National Domestic Violence Hotline: 1-800-799-SAFE',
                  style: TextStyle(fontSize: 20, color: Colors.blue[500]),
                ),
              ),
            ),
            Card(
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Color(0xFF2843BB),
                hoverColor: Color(0xFFF80303),
                onPressed: () => showAlert(context),
                child: new Text(
                  'National Domestic Violence Hotline Spanish: 1-800-942-6908',
                  style: TextStyle(fontSize: 20, color: Colors.blue[200]),
                ),
              ),
            ),
          ],
          padding: EdgeInsets.only(bottom: 10),
        ),
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure you want to call this number?'),
          actions: <Widget>[
            FlatButton(
              child: Text("YES"),
              onPressed: () {
                Text("""Goodbye""");

                //Put your code here which you want to execute on No button click.
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
}
