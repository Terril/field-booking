
import 'package:field_app/model/field_booking_model.dart';
import 'package:field_app/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _startChat() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: FutureBuilder<FieldBooking>(
            future: getAllFields(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Stack(
                    children: <Widget>[
                      Center(
                          child: Image(
                              image: AssetImage('images/no_network.png'))),
                    ],
                    alignment: AlignmentDirectional.center,
                  );
                }

                return Text(
                    'Title from Post JSON : ${snapshot.data.fields.length}');
              } else
                return CircularProgressIndicator();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startChat,
        tooltip: 'Increment',
        child: Icon(Icons.chat, color: Colors.white),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

