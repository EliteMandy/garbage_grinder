import 'package:flutter/material.dart';
import 'package:garbage_grinder/routers.dart';
import 'package:garbage_grinder/screens/home.dart';

void main() {
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
}
