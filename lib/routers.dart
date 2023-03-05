import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage_grinder/privacy.dart';
import 'package:garbage_grinder/screens/aboutUs.dart';
import 'package:garbage_grinder/screens/contactUs.dart';
import 'package:garbage_grinder/screens/profilePage.dart';
import 'package:garbage_grinder/screens/settings.dart';

import 'main.dart';

class RouteGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: ((context) => MyApp()));
      case '/profile':
        return MaterialPageRoute(builder: ((context) => ProfilePage()));
      case '/contact':
        return MaterialPageRoute(builder: ((context) => ContactUs()));
      case '/About-us':
        return MaterialPageRoute(builder: ((context) => AboutUs()));
      case '/Settings':
        return MaterialPageRoute(builder: ((context) => Settings()));
      case '/Privacy':
        return MaterialPageRoute(builder: ((context) => Privacy()));
      default:
        return MaterialPageRoute(
          builder: ((context) => Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text('Error'),
                ),
                body: Center(
                  child: Text('Error 404 Page not Found'),
                ),
              )),
        );
    }
  }
}
