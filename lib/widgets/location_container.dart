import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Locationcontainer extends StatelessWidget{
  final String BtnName;
  final Icon? icon;
  final Color? Bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  Locationcontainer({required this.BtnName,
      this.icon,
      this.Bgcolor,
      this.callback,
      this.textStyle,
    required double containerHeight,
    required double containerWidth,
    required EdgeInsets margin});

  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
       callback!();
     },
     child: Container(
       alignment: Alignment.center,
       height: 40.0,
       width: 300.0,
       margin: EdgeInsets.all(10.0),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
         border: Border.all(width: 2, color: Colors.deepOrange),
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Icon(
             Icons.location_on, // Icon to display, you can use other Icons from the Icons class
             size: 25.0, // Size of the icon
             color: Colors.deepOrange, // Color of the icon
           ),
           Text(
             BtnName,
             style: TextStyle(
               fontFamily: 'fontmain',
               color: Colors.black,
               fontSize: 16.0,
               fontWeight: FontWeight.bold,
             ),
           ),

         ],
       )
     ),
   );
  }

}