import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaigar/widgets/gym_info_container2.dart';
import 'package:thaigar/widgets/gymfeatureicon.dart';
import 'package:thaigar/widgets/gymphotosrow.dart';
import 'package:thaigar/widgets/textwidget.dart';
import 'bookingscreen.dart';
import 'widgets/bottomnavigationbar.dart';
import 'widgets/blurbackground.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key}) : super(key: key);

  @override
  State<UserInfoScreen> createState() => _GymScreenState();
}

class _GymScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:
        Stack(
          children: [
            const BlurredBackground(
              imagePath: 'assets/images/blackback2.jpg',
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.transparent,
                        margin: EdgeInsets.only(top: 20,),
                        height: 200.0,
                        child: const Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/omkarpic.jpg'),
                              minRadius: 15,
                              maxRadius: 70,
                            ),
                            SizedBox(height: 20,width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Omkar Jadhav",style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),

                                ),
                                Text("Age:22",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),

                                ),
                                Text("height:170cm",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),

                                ),
                                Text("weight:80Kg",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),

                                ),

                              ],
                            )

                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 80.0,
                        child: const Center(
                          child: Text(style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "fontmain",
                          ),
                            " Membership Details"
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 80.0,
                        child: const Center(
                          child: Text(style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "fontmain",
                          ),
                              " Profile Settings"
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 80.0,
                        child: const Center(
                          child: Text(style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "fontmain",
                          ),
                              " Thaigar Gifts"
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 80.0,
                        child: const Center(
                          child: Text(style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "fontmain",
                          ),
                              "Rewards"
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 80.0,
                        child: const Center(
                          child: Text(style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "fontmain",
                          ),
                              "Reminders"
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 80.0,
                        child: const Center(
                          child: Text(style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "fontmain",
                          ),
                              "Orders"
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 80.0,
                        child: const Center(
                          child: Text(style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "fontmain",
                          ),
                              "Reserved Workouts"
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        )



    );
  }
}
