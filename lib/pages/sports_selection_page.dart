import 'dart:ui';

import 'package:field_app/main.dart';
import 'package:flutter/material.dart';
import 'package:field_app/extension//extended_ink_well.dart';

class SportsSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Sports Selection';
    Widget _submitGames() => InkWell(
        onTap: () {},
        child: IconButton(
          icon: Icon(Icons.check, color: Colors.white),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeTabApp()));
          },
        ));
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              softWrap: true),
          actions: <Widget>[_submitGames()],
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(20, (index) {
            return Card(
                margin: new EdgeInsets.all(7.0),
                elevation: 4.0,
                child: Stack(
                  children: <Widget>[
                    Center(
                        child: Image(
                            image: AssetImage('images/no_network.png'),
                            fit: BoxFit.contain)),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            color: Colors.black12,
                            height: 40.0,
                            padding: EdgeInsets.all(5.0),
                            width: double.maxFinite,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Item $index',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                  IconButton(
                                          padding: EdgeInsets.symmetric(),
                                          icon: Icon(Icons.star,
                                              color: Colors.black38),
                                          onPressed: () {})
                                      .addSplash()
                                ]))),
                  ],
                ));
          }),
        ),
      ),
    );
  }
}
