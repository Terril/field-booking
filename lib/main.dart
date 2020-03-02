import 'package:field_app/ProfileItem.dart';
import 'package:field_app/model/field_booking_model.dart';
import 'package:field_app/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              title: Text("Sports you're interested in!!",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  softWrap: true),
              bottom: new TabBar(
                tabs: <Widget>[
                  new Tab(icon: new Icon(Icons.home, color: Colors.white)),
                  new Tab(icon: new Icon(Icons.people, color: Colors.white)),
                  new Tab(icon: new Icon(Icons.person, color: Colors.white)),
                ],
              ),
            ),
            body: new TabBarView(children: <Widget>[
              new HomePage(title: ''),
              new Text("You've Selected Second"),
              ProfilePage()
            ]),
          ),
        ));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.chat, color: Colors.white),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
      children: <Widget>[
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              trailing: Icon(Icons.keyboard_arrow_right),
            )),
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.keyboard_arrow_right),
            )),
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.share),
              title: Text('Share the App'),
            )),
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text('Invite Friends'),
            )),
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('Offers'),
              trailing: Icon(Icons.keyboard_arrow_right),
            )),
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.add_location),
              title: Text('List your space'),
              trailing: Icon(Icons.keyboard_arrow_right),
            )),
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.keyboard_arrow_right),
            )),
        InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact us'),
            ))
      ],
    ));
  }
}
