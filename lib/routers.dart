import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage_grinder/screens/privacy.dart';
import 'package:garbage_grinder/screens/aboutUs.dart';
import 'package:garbage_grinder/screens/contactUs.dart';
import 'package:garbage_grinder/screens/home.dart';
import 'package:garbage_grinder/screens/profilePage.dart';
import 'package:garbage_grinder/screens/settings.dart';

import 'main.dart';

class RouteGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(builder: ((context) => HomePage()));
      case ProfilePage.routeName:
        return MaterialPageRoute(builder: ((context) => ProfilePage()));
      case ContactUs.routeName:
        return MaterialPageRoute(builder: ((context) => ContactUs()));
      case AboutUs.routeName:
        return MaterialPageRoute(builder: ((context) => AboutUs()));
      case Settings.routeName:
        return MaterialPageRoute(builder: ((context) => Settings()));
      case Privacy.routeName:
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
