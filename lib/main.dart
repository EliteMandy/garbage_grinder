import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Text("Hello Mahendra"),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Garbage Grinder"),
          backgroundColor: Color.fromARGB(255, 43, 41, 41),
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
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
            ListTile(
              leading: Icon(Icons.person_sharp),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('About us'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy'),
            ),
          ],
        )),
      ),
    ),
  );
}
