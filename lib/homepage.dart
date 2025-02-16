import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaigar/meal_selection.dart';
import 'package:thaigar/signin_screen.dart';
import 'package:thaigar/widgets/bottomnavigationbar.dart';
import 'package:thaigar/widgets/blurbackground.dart';
import 'package:thaigar/pickcentrelocationscreen.dart';

import 'FormVideo.dart';
import 'nutritionist_call.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Homepage> {

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

      body:Column(
        children: [
          Expanded(child:
          Stack(
            children: [
              const BlurredBackground(imagePath: 'assets/images/blackback2.jpg',),
              SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 200.0,
                      child:
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            height: 200.0,
                            width: 180.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.purple,
                                        width: 2.0,
                                      )
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const pickcentreScreen(),
                                      ));
                                    },
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage('assets/images/schedule.jpg'),
                                      minRadius: 15,
                                      maxRadius: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'Schedule workout',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200.0,
                            width: 180.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 2.0,
                                      )
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  NutritionistScreen(),
                                      ));
                                    },
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage('assets/images/nutritionist.jpg'),
                                      minRadius: 15,
                                      maxRadius: 70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'Cunsult Nutritionist',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200.0,
                            width: 180.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 2.0,
                                      )
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/homeworkout.jpg'),
                                    minRadius: 15,
                                    maxRadius: 70,
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'Workout at Home',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200.0,
                            width: 180.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 2.0,
                                      )
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/trainerpic.jpg'),
                                    minRadius: 15,
                                    maxRadius: 70,
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'Trainer at Home',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],

                      ),
                    ),
                    Container(
                      height: 250.0,
                      margin: const EdgeInsets.only(bottom: 10 , top: 5, right: 3,left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/loginpage.jpg'),
                          fit: BoxFit.cover,
                      ),
                    ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> ExerciseVideosScreen()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 250.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.white),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/formvideos.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end, // Aligns children at the bottom
                          children: [
                            FaIcon(
                              FontAwesomeIcons.play, // Replace 'yourIcon' with the desired Font Awesome icon
                              color: Colors.white,
                              size: 40.0, // Adjust the size of the icon as needed
                            ),
                            SizedBox(height: 20), // Add your text widget here
                            Text(
                              'Video Tutorial',
                              style: TextStyle(
                                fontFamily: 'fontmain',
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                // Add more text styling properties as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.white),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/fatburn.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end, // Aligns children at the bottom
                        children: [ // Add your text widget here
                          Text(
                            'Loose weight',
                            style: TextStyle(
                              fontFamily: 'fontmain',
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              // Add more text styling properties as needed
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            height: 100.0,
                            width: 150.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 2.0,
                                    )
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/yoga.jpg'),
                                    minRadius: 15,
                                    maxRadius: 45,
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'yoga',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100.0,
                            width: 150.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 2.0,
                                      )
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/yoga.jpg'),
                                    minRadius: 15,
                                    maxRadius: 45,
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'yoga',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100.0,
                            width: 150.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 2.0,
                                      )
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/yoga.jpg'),
                                    minRadius: 15,
                                    maxRadius: 45,
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'yoga',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100.0,
                            width: 150.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 2.0,
                                      )
                                  ),
                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/yoga.jpg'),
                                    minRadius: 15,
                                    maxRadius: 45,
                                  ),
                                ),
                                const SizedBox(height: 10.0), // Add some space between the CircleAvatar and text
                                const Text(
                                  'yoga',
                                  style: TextStyle(
                                    fontFamily: 'fontmain',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    // Add more text styling properties as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],

                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  MealPlanningScreen(),
                        ));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 250.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.white),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/mealplanning.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end, // Aligns children at the bottom
                          children: [
                            FaIcon(
                              FontAwesomeIcons.bowlFood, // Replace 'yourIcon' with the desired Font Awesome icon
                              color: Colors.white,
                              size: 40.0, // Adjust the size of the icon as needed
                            ),
                            SizedBox(height: 20), // Add your text widget here
                            Text(
                              'Meal Planning',
                              style: TextStyle(
                                fontFamily: 'fontmain',
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                // Add more text styling properties as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.white),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/formvideos.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end, // Aligns children at the bottom
                        children: [
                          FaIcon(
                            FontAwesomeIcons.play, // Replace 'yourIcon' with the desired Font Awesome icon
                            color: Colors.white,
                            size: 40.0, // Adjust the size of the icon as needed
                          ),
                          SizedBox(height: 20), // Add your text widget here
                          Text(
                            'Video Tutorial',
                            style: TextStyle(
                              fontFamily: 'fontmain',
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              // Add more text styling properties as needed
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.white),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/formvideos.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.end, // Aligns children at the bottom
                        children: [
                          FaIcon(
                            FontAwesomeIcons.play, // Replace 'yourIcon' with the desired Font Awesome icon
                            color: Colors.white,
                            size: 40.0, // Adjust the size of the icon as needed
                          ),
                          SizedBox(height: 20), // Add your text widget here
                          Text(
                            'Video Tutorial',
                            style: TextStyle(
                              fontFamily: 'fontmain',
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              // Add more text styling properties as needed
                            ),
                          ),
                        ],
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.white )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.white )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.white )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.white )
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
            ] // stack children
          )
          ),
          BottomNavigationBarWidget()



        ],
      )

    );
  }
}