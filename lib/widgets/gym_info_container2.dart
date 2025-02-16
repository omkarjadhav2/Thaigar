import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bookingscreen.dart';

class GymCard extends StatelessWidget {
  final String name;
  final String address;
  final String description;
  final bool hasAc;
  final bool hasParking;
  final bool hasLocker;
  final bool hasShower;
  final List<String> photoPaths;// Flag for shower availability

  const GymCard({
    required this.name,
    required this.address,
    required this.description,
    required this.hasAc,
    required this.hasShower,
    required this.photoPaths,
    required this.hasParking,
    required this.hasLocker,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(10),)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0, // Adjust the height as needed
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 2.0, color: Colors.deepOrange),
                // Upper border
                bottom: BorderSide(width: 2.0, color: Colors.deepOrange),
                right: BorderSide(width: 2.0, color: Colors.white),
                left: BorderSide(
                    width: 2.0, color: Colors.white), // Lower border
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: photoPaths.map((path) => GymPhoto(imagePath: path)).toList(),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
           Text(
            name,
            style: TextStyle(
              fontFamily: 'fontmain',
              color: Colors.deepOrange,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Adjust as needed
            children: [
              FaIcon(FontAwesomeIcons.snowflake, color: Colors.white,),
              Text(hasAc ? "AC" : "No AC",
                  style: TextStyle(
                color: Colors.white
              )
              ),
              SizedBox(width: 16.0),
              FaIcon(FontAwesomeIcons.shower,color: Colors.lightBlue,),
              Text(hasShower ? "Shower" : "No Shower",style: TextStyle(
                  color: Colors.white
              )),
              FaIcon(FontAwesomeIcons.car,color: Colors.pink),
              Text(hasParking ? "Parking" : "No Parking",style: TextStyle(
                  color: Colors.white
              )),
              FaIcon(FontAwesomeIcons.lock,color: Colors.cyanAccent,),
              Text(hasLocker ? "Locker" : "No Locker",style: TextStyle(
                  color: Colors.white
              )),
            ],


          ),
          const SizedBox(height: 10.0),
          Text(
            description,
            style: TextStyle(fontSize: 15.0, color: Colors.white,),
          ),
          const SizedBox(height: 7.0),
          Text(
            address,
            style: TextStyle(fontSize: 15.0, color: Colors.white,),
          ),
          const SizedBox(height:12.0),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingScreen()),
                );
              },
              child: const Text(
                'Book Slot',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18.0, // Set text size
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,

                ),
              )

          ),
        ],
      ),
    );
  }
}
class GymPhoto extends StatelessWidget {
  final String imagePath;

  GymPhoto({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: 250.0,
      height: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(2.0),
      ),
    );
  }
}