import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaigar/widgets/location_container.dart';
import 'package:thaigar/widgets/textwidget.dart';
import 'widgets/bottomnavigationbar.dart';
import 'widgets/blurbackground.dart';
import 'gymscreen.dart';

class pickcentreScreen extends StatefulWidget {
  const pickcentreScreen({Key? key}) : super(key: key);

  @override
  State<pickcentreScreen> createState() => _pickcentreScreenState();
}

class _pickcentreScreenState extends State<pickcentreScreen> {
  static List<String> locationNames = [
    'Bandra',
    'Parel',
    'Churchgate',
    'Mahalakshmi',
    'Matunga',
    'Sion',
    'Dadar',
    'Goregoan',
    'Thane',
    'Kalyan',
    'Lower parel',
    'Jogeshwari',
    'Virar',
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
          const BlurredBackground(imagePath: 'assets/images/blackback2.jpg',),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 100.0,
                    width: 300.0,
                    decoration: const BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.all(Radius.circular(20)
                      ),
                    ),
                    child: const Center(
                      child: Text("Choose Nearby location",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0,),
                  Container(
                    height: 590.0,
                    width: 300.0,
                    child: ListView.builder(
                        itemCount: locationNames.length,
                        itemBuilder: (context, index){
                          return Locationcontainer(
                            callback: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const GymScreen(),
                              ));
                            },
                            BtnName: locationNames[index],
                            containerHeight: 40.0,
                            containerWidth: 300.0,
                            margin: const EdgeInsets.all(10.0),
                          );
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomNavigationBarWidget()
        ],
      )



    );
  }
}
