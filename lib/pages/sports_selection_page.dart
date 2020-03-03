import 'package:flutter/material.dart';
import 'package:field_app/extension//extended_ink_well.dart';

class SportsSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Sports Selection';

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
                child: Center(
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headline,
                  ),
                ).addSplash());
          }),
        ),
      ),
    );
  }
}
