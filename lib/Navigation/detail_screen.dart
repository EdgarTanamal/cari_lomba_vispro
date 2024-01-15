// detail_screen.dart
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Your content goes here
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is the Detail Screen'),
                SizedBox(height: 20),
              ],
            ),
          ),
          // Back button in the top-left corner
          Positioned(
            top: 20, // Adjust the top position as needed
            left: 20, // Adjust the left position as needed
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
