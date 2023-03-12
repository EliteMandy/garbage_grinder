import 'package:flutter/material.dart';
import 'package:garbage_grinder/routers.dart';
import 'package:garbage_grinder/screens/home.dart';

void main() {
<<<<<<< HEAD
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Garbage Grinder"),
          backgroundColor: Color.fromARGB(255, 43, 41, 41),
        ),
        body:Center(child: Text('Hello Mahendra',
        style: TextStyle(
                  color: Color.fromARGB(255, 7, 164, 222),
                  fontSize: 30,
                  fontFamily: 'Courier'),
        
        ),),
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
            ListTile(
              leading: Icon(Icons.accessibility_outlined),
              title: Text('Accessibility'),
            ),
          ],
        )),
      ),
    ),
  );
=======
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor mycolor = const MaterialColor(
    0xFF15764E,
    <int, Color>{
      50: Color(0xFF15764E),
      100: Color(0xFF15764E),
      200: Color(0xFF15764E),
      300: Color(0xFF15764E),
      400: Color(0xFF15764E),
      500: Color(0xFF15764E),
      600: Color(0xFF15764E),
      700: Color(0xFF15764E),
      800: Color(0xFF15764E),
      900: Color(0xFF15764E),
    },
  );
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: mycolor,
          iconTheme: IconThemeData(
            color: Color(0xFF15764E),
          )),
      initialRoute: HomePage.routeName,
      onGenerateRoute: (settings) => RouteGenerate.generateRoute(settings),
      debugShowCheckedModeBanner: false,
    );
  }
>>>>>>> 442bdea605771b4d8862d34e83cf7bb50f21391c
}
