import 'package:flutter/material.dart';

class BookingLogic {
  static List<String> sessions = [
    'Yoga',
    'Pilates',
    'Lower Body',
    'Upper Body',
    'Full Body',
    'Aerobic',
    'Dance',
    'Zumba',
    'Squats',
  ];

  static List<String> availableTimings = [
    '6:00 AM - 8:00 AM',
    '8:00 AM - 10:00 AM',
    '10:00 AM - 12:00 PM',
    '12:00 PM - 2:00 PM',
    '4:00 PM - 6:00 PM',
    '6:00 PM - 8:00 PM',
    '8:00 PM - 10:00 PM',
  ];

  static Map<String, List<String>> sessionTimings = {
    'Yoga': ['6:00 AM - 8:00 AM', '8:00 AM - 10:00 AM'],
    'Pilates': ['10:00 AM - 12:00 PM', '4:00 PM - 6:00 PM'],
    'Lower Body': ['6:00 AM - 8:00 AM', '8:00 AM - 10:00 AM'],
    'Upper Body': ['10:00 AM - 12:00 PM', '6:00 PM - 8:00 PM'],
    'Full Body': ['12:00 PM - 2:00 PM', '8:00 PM - 10:00 PM'],
    'Aerobic': ['6:00 AM - 8:00 AM', '8:00 AM - 10:00 AM'],
    'Dance': ['10:00 AM - 12:00 PM', '4:00 PM - 6:00 PM'],
    'Zumba': ['6:00 PM - 8:00 PM', '8:00 PM - 10:00 PM'],
    'Squats': ['12:00 PM - 2:00 PM', '6:00 PM - 8:00 PM'],
  };

  static Future<bool> bookSession(
      BuildContext context, String selectedSession, String selectedTiming, DateTime selectedDate) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Booking'),
          content: Text(
              'Do you want to book $selectedSession session at $selectedTiming on ${_formattedDate(selectedDate)}?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // No, do not book
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // Yes, book the session
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  static String _formattedDate(DateTime date) {
    return "${date.day}-${date.month}-${date.year}";
  }
}
