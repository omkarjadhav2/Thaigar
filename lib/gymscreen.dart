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

class GymScreen extends StatefulWidget {
  const GymScreen({Key? key}) : super(key: key);

  @override
  State<GymScreen> createState() => _GymScreenState();
}

class _GymScreenState extends State<GymScreen> {
  static List<String> gymNamesArr = [
    'Qi Gym Churchgate',
    'Gold’s Gym',
    'I Think Fitness',
    'Fitness First',
    'Waves Gym Andheri',
    'Your Fitness Club',
    'The Springtime Club',
    'Nitro Bespoke Fitness',
    'Orangetheory Fitness',
  ];
  static List<String> gymAddressArr = [
    'Eros Cinema Building,Churchgate',
    'Lower Parel West',
    'Bandra West',
    'Maker Maxity,BKC ',
    'Morya Estate, Andheri West,',
    'Mumbai Central',
    'Thane West',
    'Breach candy,Malbar Hills',
    'Worli Sea link',
  ];
  static List<String> gymDescriptionArr = [
    'They own the largest cardio facility in Mumbai with over 45 cardio units',
    'It’s first centre in India was set up in Mumbai in 2002 and now, 15 years ',
    'I Think Fitness truly is an ideal place to reach your fitness goals',
    'This Gym is an ideal place  to cater the needs of everyone from a beginner to a pro fitness freak ',
    'this gym provides you with the latest fitness equipments',
    'YFC provides you training in MMA (Mixed Martial Arts), Zumba and Yoga',
    'it provides you with options to choose from a wide range of fitness programs',
    'his gym focuses on helping you achieve your fitness aspirations and get a sculpted body in the most elite way possible.',
    'Best Gym in Worli',
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text(style: TextStyle(
            fontFamily: 'fontmain',
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            // Add more text styling properties as needed
          ),
              'Thaigar'),

          backgroundColor: Colors.deepOrange, // Set the background color to blue
        ),

        body:
        Stack(
          children: [
            const BlurredBackground(
              imagePath: 'assets/images/blackback2.jpg',
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white12.withOpacity(0.3),
              ),
              alignment: Alignment.topCenter,

              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 100.0,
                  width: 300.0,
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.all(Radius.circular(20)
                    ),
                  ),
                  child: const Center(
                    child: Text("Choose Nearby Centre",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                  Container(
                    height: 600.0,
                    child: ListView.builder(
                        itemCount: gymNamesArr.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GymCard(
                              name: gymNamesArr[index],
                              address: gymAddressArr[index],
                              description: gymDescriptionArr[index],
                              hasAc: true,
                              hasShower: true,
                              hasParking: true,
                              hasLocker: true,
                              photoPaths: ["assets/images/yoga.jpg","assets/images/fatburn.jpg","assets/images/formvideos.jpg"],

                            ),
                          );
                        }
                        ),
                  )
                ],
              )
            ),
            BottomNavigationBarWidget()
          ],
        )



    );
  }
}
