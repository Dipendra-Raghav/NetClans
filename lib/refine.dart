import 'package:flutter/material.dart';
import 'package:ui/selectbutton.dart';

class RefineScreen extends StatelessWidget {
  final TextEditingController _textEditingController =
      TextEditingController(text: 'Hi community! I am open to new connections');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E2E43),
        title: Text('Refine'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Your Availability',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: DropdownButton<String>(
                value: '  Available | Hey Let Us Connect',
                onChanged: (value) {
                  // Handle dropdown value change
                },
                items: [
                  DropdownMenuItem(
                    value: '  Available | Hey Let Us Connect',
                    child: Text(
                        '  Available | Hey Let Us Connect                    '),
                  ),
                  DropdownMenuItem(
                    value: '  Away | Stay Discreet And Watch',
                    child: Text('  Away | Stay Discreet And Watch'),
                  ),
                  DropdownMenuItem(
                    value: '  Busy | Do Not Disturb',
                    child: Text('  Busy | Do Not Disturb'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Add Your Status',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Container(
              width: 500,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                controller: TextEditingController(
                    text: 'Hi community! I am open to connections.'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Select Hyper local Distance',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Slider(
              min: 0,
              max: 100,
              value: 50,
              onChanged: (value) {
                // Handle slider value change
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("      1 Km"),
                Text("100 Km    "),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Select Purpose',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                SelectableTextWidget(text: 'Coffee'),
                SizedBox(width: 10),
                SelectableTextWidget(text: 'Business'),
                SizedBox(width: 10),
                SelectableTextWidget(text: 'Hobbies'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                SelectableTextWidget(text: 'Friendship'),
                SizedBox(width: 10),
                SelectableTextWidget(text: 'Movies'),
                SizedBox(width: 10),
                SelectableTextWidget(text: 'Dinning'),
                SizedBox(width: 10),
                SelectableTextWidget(text: 'Datind'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                SelectableTextWidget(text: 'Matrimony'),
              ],
            ),
            SizedBox(height: 25),
            Center(
              child: Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0E2E43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text('Save & Explore'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
