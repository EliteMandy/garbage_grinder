import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Garbage Grinder"),
          backgroundColor: const Color.fromARGB(255, 43, 41, 41),
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 43, 41, 41),
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
                Navigator.of(context).pushNamed('/profile');
              },
              child: const ListTile(
                leading: Icon(Icons.person_sharp),
                title: Text('Profile'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/contact');
              },
              child: const ListTile(
                leading: Icon(Icons.call),
                title: Text('Contact'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/About-us');
              },
              child: const ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('About us'),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/Settings'),
              child: const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/Privacy'),
              child: const ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Privacy'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
