import 'package:flutter/material.dart';

TextStyle? style1 = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
TextStyle? style2 = const TextStyle(
  fontSize: 19,
  color: Color(0xFF15764E),
);
const double IconSize = 31;

Widget buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: Row(
      children: const [
        Icon(
          Icons.notifications,
          size: IconSize,
        ),
        SizedBox(
          width: 10,
        ),
        Text('Knock Knock!'),
      ],
    ),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            const Icon(
              Icons.calendar_today,
              size: IconSize,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Date : ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text('12:02:23', style: style2),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.timer_sharp,
              size: IconSize,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Time :',
              style: style1,
            ),
            Text(
              '12:02 pm',
              style: style2,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.recycling_outlined,
              size: IconSize,
            ),
            Text(
              'Collection:',
              style: style1,
            ),
            Text(
              '12 kg',
              style: style2,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 2,
          color: Color(0xFF15764E),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              Text(
                'Today Collected:',
                style: style1,
              ),
              Text(
                ' 2kg',
                style: style2,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              'Segregation : ',
              style: style1,
            ),
            const SizedBox(
              height: 10,
            ),
            const Icon(
              Icons.emoji_emotions_outlined,
              size: IconSize,
            )
          ],
        )
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}
