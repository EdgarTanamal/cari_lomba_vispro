// home_screen.dart
import 'package:flutter/material.dart';
import 'custom_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Gray background
                borderRadius: BorderRadius.circular(10.0), // 10 radius
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        onChanged: (value) {
                          // Add your search logic here
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Notification button on the right side of the search bar
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // Add your notification logic here
                  // For example, you can navigate to a NotificationsScreen
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsScreen()));
                },
              ),
            ),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to the Home Screen'),
                SizedBox(height: 20),
                CustomCard(
                  title: 'Card on Home Screen',
                  content: 'This is some content for the card on the Home Screen.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
