import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DateCalendar extends StatefulWidget {
  const DateCalendar({super.key});

  @override
  State<DateCalendar> createState() => DateCalendarState();
}

class DateCalendarState extends State<DateCalendar> {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: const Padding(
        padding: EdgeInsets.only(top: 28.0, left: 18, right: 18),
        child: MonthView(
          cellAspectRatio: 1,
        ),
      ),
    );
  }
}
