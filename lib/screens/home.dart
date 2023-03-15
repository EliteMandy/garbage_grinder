import 'package:flutter/material.dart';
import 'package:garbage_grinder/widgets/popup.dart';
import 'package:garbage_grinder/screens/homeScreen/store.dart';

import 'package:garbage_grinder/widgets/drawer.dart';

import 'homeScreen/calendar.dart';
import 'homeScreen/stats.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.auto_graph_rounded),
              ),
              Tab(
                child: Icon(Icons.calendar_month),
              ),
              Tab(
                child: Icon(Icons.shopping_cart),
              ),
            ],
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Garbage Grinder"),
              GestureDetector(
                child: Icon(Icons.notifications),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
        ),
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        body: const TabBarView(
          children: [
            Stats(),
            Calnedar(),
            Store(),
          ],
        ),
      ),
    );
  }
}
