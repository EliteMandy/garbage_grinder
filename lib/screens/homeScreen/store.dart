import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 48.0, left: 28, right: 28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Coin Balance',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            '45',
                            style: TextStyle(
                              fontSize: 27,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Icon(
                            Icons.attach_money_outlined,
                            size: 30,
                          ) //coin balance
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(MdiIcons.cube),
                          Text(
                            'Orders',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(MdiIcons.counter),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            'Coupons',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0712/9975/products/4-copper-water-bottle-combo-13574110838849.jpg?v=1584717688'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
