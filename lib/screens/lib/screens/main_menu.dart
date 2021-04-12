import 'package:flutter/material.dart';
import 'package:flutter_side_menu/models/infra/menu_item.dart';
import 'package:flutter_side_menu/screens/Journal.dart';
import 'package:flutter_side_menu/screens/Hotline.dart';
import 'package:flutter_side_menu/screens/Settings.dart';
import 'package:flutter_side_menu/screens/survey.dart';
import 'package:flutter_side_menu/screens/dashboard.dart';
import 'package:flutter_side_menu/screens/Treatment.dart';
import 'package:flutter_side_menu/screens/MyScore.dart';
import 'package:flutter_side_menu/screens/Feed.dart';
import 'package:flutter_side_menu/screens/IndividualTherapist.dart';
import 'package:flutter_side_menu/screens/Logout.dart';
import 'package:flutter_side_menu/screens/Settings.dart';
import 'package:flutter_side_menu/main.dart';

class MainMenu extends StatefulWidget {
  @override
  MainMenuState createState() {
    return MainMenuState();
  }
}

class MainMenuState extends State<MainMenu> {
  Widget _appBarTitle;
  Color _appBarBackgroundColor;
  MenuItem _selectedMenuItem;
  List<MenuItem> _menuItems;
  List<Widget> _menuOptionWidgets = [];

  @override
  initState() {
    super.initState();

    _menuItems = createMenuItems();
    _selectedMenuItem = _menuItems.first;
    _appBarTitle = new Text(_menuItems.first.title);
    _appBarBackgroundColor = _menuItems.first.color;
  }

  _getMenuItemWidget(MenuItem menuItem) {
    return menuItem.func();
  }

  _onSelectItem(MenuItem menuItem) {
    setState(() {
      _selectedMenuItem = menuItem;
      _appBarTitle = new Text(menuItem.title);
      _appBarBackgroundColor = menuItem.color;
    });
    Navigator.of(context).pop(); // close side menu
  }

  @override
  Widget build(BuildContext context) {
    _menuOptionWidgets = [];

    for (var menuItem in _menuItems) {
      _menuOptionWidgets.add(new Container(
          decoration: new BoxDecoration(
              color: menuItem == _selectedMenuItem
                  ? Colors.grey[200]
                  : Colors.white),
          child: new ListTile(
              leading: new Image.asset(menuItem.icon),
              onTap: () => _onSelectItem(menuItem),
              title: Text(
                menuItem.title,
                style: new TextStyle(
                    fontSize: 20.0,
                    color: menuItem.color,
                    fontWeight: menuItem == _selectedMenuItem
                        ? FontWeight.bold
                        : FontWeight.w300),
              ))));

      _menuOptionWidgets.add(
        new SizedBox(
          child: new Center(
            child: new Container(
              margin: new EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
              height: 0.3,
              color: Colors.grey,
            ),
          ),
        ),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: _appBarTitle,
        backgroundColor: _appBarBackgroundColor,
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
                child: new ListTile(
                    leading: new Image.asset('assets/images/lion.png'),
                    title: Text(
                        "--username--")), //change to parameter from HomePage
                margin: new EdgeInsetsDirectional.only(top: 20.0),
                color: Colors.white,
                constraints: BoxConstraints(maxHeight: 90.0, minHeight: 90.0)),
            new SizedBox(
              child: new Center(
                child: new Container(
                  margin:
                      new EdgeInsetsDirectional.only(start: 10.0, end: 10.0),
                  height: 0.3,
                  color: Colors.black,
                ),
              ),
            ),
            new Container(
              color: Colors.white,
              child: new Column(children: _menuOptionWidgets),
            ),
          ],
        ),
      ),
      body: _getMenuItemWidget(_selectedMenuItem),
    );
  }

  List<MenuItem> createMenuItems() {
    final menuItems = [
      new MenuItem("Dashboard", 'assets/images/dashboard.png', Colors.black,
          () => new Dashboard()),
      new MenuItem("Settings", 'assets/images/settings.png', Colors.black,
          () => new Settings()),
      new MenuItem("Survey", 'assets/images/survey.png', Colors.green,
          () => new Survey()),
      new MenuItem("My Score", 'assets/images/myscore.jpg', Colors.yellow,
          () => new MyScore()),
      new MenuItem("Treatments", 'assets/images/treatment.png', Colors.brown,
          () => new Treatment()),
      new MenuItem("Journal", 'assets/images/journal.jpg', Colors.red,
          () => new Journal()),
      new MenuItem("Hotline", 'assets/images/hotline.jpg', Colors.purple,
          () => new Hotline()),
      new MenuItem(
          "Feedback", 'assets/images/think.png', Colors.blue, () => new Feed()),
      new MenuItem("Individual Therapist", 'assets/images/individual.png',
          Colors.orange, () => new IndividualTherapist()),
      new MenuItem("Logout", 'assets/images/logout.png', Colors.black,
          () => new Logout()),
    ];
    return menuItems;
  }
}
