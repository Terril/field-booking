import 'package:field_app/pages/home_page.dart';
import 'package:field_app/pages/profile_page.dart';
import 'package:field_app/pages/sports_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(SportsSelectionPage());

class HomeTabApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Field Booking',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.lightGreen,
        ),
        home: new DefaultTabController(
          length: 2,
          child: new Scaffold(
            appBar: new AppBar(
              title: Text("Sports you're interested in!!",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  softWrap: true),
              bottom: new TabBar(
                tabs: <Widget>[
                  new Tab(icon: new Icon(Icons.home, color: Colors.white)),
                 // new Tab(icon: new Icon(Icons.people, color: Colors.white)),
                  new Tab(icon: new Icon(Icons.person, color: Colors.white)),
                ],
              ),
            ),
            body: new TabBarView(children: <Widget>[
              HomePage(),
             // new Text("You've Selected Second"),
              ProfilePage()
            ]),
          ),
        ));
  }
}

