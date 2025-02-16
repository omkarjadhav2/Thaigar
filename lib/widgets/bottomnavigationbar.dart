import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaigar/homepage.dart';
import '../pickcentrelocationscreen.dart';
import '../userInfo_screen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        height: 40.0,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.white, width: 0.2)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/blackback2.jpg'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust as needed
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage(),
                              ));
                            },
                            child: FaIcon(FontAwesomeIcons.house, color: Colors.white, size: 35.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const pickcentreScreen(),
                              ));
                            },
                            child: FaIcon(FontAwesomeIcons.solidCalendarDays, color: Colors.white, size: 35.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const pickcentreScreen(),
                              ));
                            },
                            child: FaIcon(FontAwesomeIcons.store, color: Colors.white, size: 35.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const UserInfoScreen(),
                              ));
                            },
                            child: FaIcon(FontAwesomeIcons.user, color: Colors.white, size: 35.0),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



