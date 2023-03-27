import 'package:flutter/material.dart';

import 'dart:math';

const int cellCount = 100;
const int rows = 5;
const int columns = 17;
const String year = '2023';

class Calendar extends StatefulWidget {
  const Calendar({super.key});


  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
      children: [
        const SizedBox(height: 20),
            const Text(
              year,
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid
              ),
            ),
        const SizedBox(height: 20),
        Table(
          children: List.generate(rows, (row) {
            List<TableCell> rowCells = [];
            for (int column = 0; column < columns; column++) {
              int cellidx = (row * columns + column);
              if (cellidx < cellCount) {
                rowCells.add(
                    TableCell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: _getRandomColor(),
                                border: Border.all(color: Colors.white)
                            ),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                        )
                    )
                );
              } else {
                rowCells.add(
                    TableCell(
                      child: Container(),
                    )
                );
              }
            }
            return TableRow(children: rowCells);
          }),
        ),const SizedBox(height: 40),
        Table(
          children: List.generate(rows, (row) {
            List<TableCell> rowCells = [];
            for (int column = 0; column < columns; column++) {
              int cellidx = (row * columns + column);
              if (cellidx < cellCount) {
                rowCells.add(
                    TableCell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: _getRandomColor(),
                                border: Border.all(color: Colors.white)
                            ),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                        )
                    )
                );
              } else {
                rowCells.add(
                    TableCell(
                      child: Container(),
                    )
                );
              }
            }
            return TableRow(children: rowCells);
          }),
        ),const SizedBox(height: 40),
        Table(
          children: List.generate(rows, (row) {
            List<TableCell> rowCells = [];
            for (int column = 0; column < columns; column++) {
              int cellidx = (row * columns + column);
              if (cellidx < cellCount) {
                rowCells.add(
                    TableCell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: _getRandomColor(),
                                border: Border.all(color: Colors.white)
                            ),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                        )
                    )
                );
              } else {
                rowCells.add(
                    TableCell(
                      child: Container(),
                    )
                );
              }
            }
            return TableRow(children: rowCells);
          }),
        ),const SizedBox(height: 40),
        Table(
          children: List.generate(rows, (row) {
            List<TableCell> rowCells = [];
            for (int column = 0; column < columns; column++) {
              int cellidx = (row * columns + column);
              if (cellidx < cellCount) {
                rowCells.add(
                    TableCell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: _getRandomColor(),
                                border: Border.all(color: Colors.white)
                            ),
                            child: const Text(
                              ' ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                        )
                    )
                );
              } else {
                rowCells.add(
                    TableCell(
                      child: Container(),
                    )
                );
              }
            }
            return TableRow(children: rowCells);
          }),
        ),
      ],
    ));
  }
  Color _getRandomColor() {
    Random rnd = Random();
    if (rnd.nextBool()) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}