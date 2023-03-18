import 'package:flutter/material.dart';
import 'package:garbage_grinder/constants/constant.dart';

Widget buildPopupDialog(BuildContext context) {
  TextStyle? style1 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  // ignore: prefer_const_constructors
  TextStyle? style2 = TextStyle(
    fontSize: 19,
    color: Color(0xFF15764E),
  );
  KConstant constant = KConstant();
  return AlertDialog(
    title: Row(
      children: [
        Icon(
          Icons.notifications,
          size: constant.popupIconSize,
        ),
        const SizedBox(
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
            Icon(
              Icons.calendar_today,
              size: constant.popupIconSize,
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
            Icon(
              Icons.timer_sharp,
              size: constant.popupIconSize,
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
            Icon(
              Icons.recycling_outlined,
              size: constant.popupIconSize,
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
            Icon(
              Icons.emoji_emotions_outlined,
              size: constant.popupIconSize,
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
