import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class ProfilePage extends StatelessWidget {
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Field Booking share',
        text:
            'The easiest way to booking fields. Just few taps and you are ready to rumble. '
                '\n Play your favourite game and invite your friends to join you for a match day ',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Field Booking');
  }

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
            onTap: () {
              share();
            },
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
