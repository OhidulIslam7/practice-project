import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  final String name;
  final String price;
  final String storage;
  final String image;

  UserDetailScreen({
    required this.name,
    required this.price,
    required this.storage,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image, // Load the image from the asset path
              width: 300, // Set the desired width
              height: 300, // Set the desired height
            ),
            Text('Name: $name'),
            Text('Price: $price'),
            Text('Storage: $storage'),
          ],
        ),
      ),
    );
  }
}
