import 'package:flutter/material.dart';
import 'package:garbage_grinder/widgets/textStats.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 88.0, left: 18.0),
                child: Container(
                  height: 220,
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 78.0),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          decoration:
                              const BoxDecoration(color: Colors.blueAccent),
                        ),
                        Container(
                          height: 60,
                          decoration:
                              const BoxDecoration(color: Colors.greenAccent),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              CustomStats(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 88.0, left: 10.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.file_open,
                      size: 42,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Report',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // ignore: unnecessary_const
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.attach_money,
                        size: 42,
                      ),
                      Text(
                        'Coin Zone',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
