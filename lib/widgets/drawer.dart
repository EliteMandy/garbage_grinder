import 'package:flutter/material.dart';

import '../screens/privacy.dart';
import '../screens/aboutUs.dart';
import '../screens/contactUs.dart';
import '../screens/profilePage.dart';
import '../screens/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFF15764E),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 58.0),
            child: Text(
              'Garbage Grinder',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProfilePage.routeName);
          },
          child: const ListTile(
            leading: Icon(Icons.person_sharp),
            title: Text('Profile'),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ContactUs.routeName);
          },
          child: const ListTile(
            leading: Icon(Icons.call),
            title: Text('Contact'),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AboutUs.routeName);
          },
          child: const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('About us'),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(Settings.routeName),
          child: const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(Privacy.routeName),
          child: const ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy'),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(Privacy.routeName),
          child: const ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        GestureDetector(
          onTap: () {
            //TODO
            //Logout functionality
          },
          child: const ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Logout'),
          ),
        ),
      ],
    );
  }
}
