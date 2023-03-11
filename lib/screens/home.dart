import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:garbage_grinder/privacy.dart';
import 'package:garbage_grinder/screens/aboutUs.dart';
import 'package:garbage_grinder/screens/contactUs.dart';
import 'package:garbage_grinder/screens/profilePage.dart';
import 'package:garbage_grinder/screens/settings.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Garbage Grinder"),
            Icon(Icons.notifications),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
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
          ],
        ),
      ),
    );
  }
}
