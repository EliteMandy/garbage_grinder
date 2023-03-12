import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = 'profile-page';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Profile'),
              Icon(Icons.notifications),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://ichef.bbci.co.uk/news/976/cpsprodpb/BE8F/production/_124838784_gettyimages-464172224.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://ichef.bbci.co.uk/news/976/cpsprodpb/BE8F/production/_124838784_gettyimages-464172224.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 153.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textBaseline: TextBaseline.ideographic,
                          children: const [
                            Icon(
                              Icons.edit,
                            ),
                            Text('Edit'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29.0),
              child: Column(
                children: const [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Color.fromARGB(212, 0, 0, 0),
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Elon Musk',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(210, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
