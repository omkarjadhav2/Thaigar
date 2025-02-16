import 'package:flutter/material.dart';
import 'bookinglogic.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String selectedSession = BookingLogic.sessions[0];
  String selectedTiming = BookingLogic.availableTimings[0];
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Exercise Session'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Date:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text("Select Date"),
            ),
            SizedBox(height: 20),
            Text(
              'Select Session:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: BookingLogic.sessions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(BookingLogic.sessions[index]),
                    onTap: () {
                      setState(() {
                        selectedSession = BookingLogic.sessions[index];
                      });
                    },
                    selected: selectedSession == BookingLogic.sessions[index],
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Select Timing:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: BookingLogic.sessionTimings[selectedSession]!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      BookingLogic.sessionTimings[selectedSession]![index],
                    ),
                    onTap: () {
                      setState(() {
                        selectedTiming =
                        BookingLogic.sessionTimings[selectedSession]![index];
                      });
                    },
                    selected:
                    selectedTiming == BookingLogic.sessionTimings[selectedSession]![index],
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                bool result = await BookingLogic.bookSession(
                    context, selectedSession, selectedTiming, selectedDate);
                if (result) {
                  // Book the session logic goes here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Session booked successfully!')),
                  );
                }
              },
              child: Text('Book Session'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}
