import 'package:flutter/material.dart';

class CustomStats extends StatelessWidget {
  const CustomStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 128.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('TOTAL UNITS'),
              SizedBox(width: 10),
              Container(
                height: 10,
                width: 88,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFF15764E), width: 2),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Text('DRY WASTE'),
              SizedBox(width: 10),
              Container(
                height: 10,
                width: 88,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFF15764E), width: 2),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Text('TOTAL UNITS'),
              SizedBox(width: 10),
              Container(
                height: 10,
                width: 88,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Color(0xFF15764E), width: 2),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
