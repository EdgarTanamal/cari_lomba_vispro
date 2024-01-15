// custom_card.dart
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String content;

  CustomCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen()),
        );
      },
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(content),
            ],
          ),
        ),
      ),
    );
  }
}
