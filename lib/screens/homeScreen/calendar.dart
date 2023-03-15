import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:garbage_grinder/widgets/date_calendar.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Calnedar extends StatefulWidget {
  const Calnedar({super.key});

  @override
  State<Calnedar> createState() => _CalnedarState();
}

class _CalnedarState extends State<Calnedar> {
  @override
  Widget build(BuildContext context) {
    return const DateCalendar();
  }
}
