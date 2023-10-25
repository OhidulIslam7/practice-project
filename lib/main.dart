import 'package:flutter/material.dart';
import 'package:practice/listing.dart';
import 'user_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Phone List",
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                "Product Listing",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListWidget(
                  title: "I phone 15 pro max",
                  subtitle: "256GB | 512GB | 1TB storage no card slot",
                  textColor: Colors.black, // Text color
                  fontSize: 16.0,
                  price: "Price 1000",
                  image: "assets/iphone.jpg",
                  fontWeight: FontWeight.bold,
                  cardColor: Color(0xFFF5EEF8),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailScreen(
                          // Pass any required data to the detail screen
                          name: "I phone 15 pro max",
                          price: "1000 Doller",
                          storage: "256GB | 512GB | 1TB storage no card slot",
                          image: "assets/iphone.jpg", // Replace with your image asset path

                        ),
                      ),
                    );
                  },// Background color of the card
                ),

                ListWidget(
                  title: "Google Pixel 7 Pro",
                  subtitle: "128GB | 256GB | 512GB storage, no card slot",
                  textColor: Colors.black, // Text color
                  fontSize: 16.0,
                  price: "Price 579",
                  image: "assets/googlepixel.jpg",
                  fontWeight: FontWeight.bold,
                  cardColor: Color(0xFFF5EEF8),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailScreen(
                          // Pass any required data to the detail screen
                          name: "Google Pixel 7 Pro",
                          price: "579 Doller",
                          storage: "128GB | 256GB | 512GB storage, no card slot",
                          image: "assets/googlepixel.jpg", // Replace with your image asset path

                        ),
                      ),
                    );
                  },// Background color of the card
                ),


                ListWidget(
                  title: "Laptop",
                  subtitle: "LENOVO IDEAPAD Slim 3i 15IIL05",
                  textColor: Colors.black, // Text color
                  fontSize: 16.0,
                  price: "Price 500",
                  image: "assets/laptop.jpg",
                  fontWeight: FontWeight.bold,
                  cardColor: Color(0xFFF5EEF8),
                  // Background color of the card
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailScreen(
                          // Pass any required data to the detail screen
                          name: "Laptop",
                          price: "500 Doller",
                          storage: "LENOVO IDEAPAD Slim 3i 15IIL05",
                          image: "assets/laptop.jpg", // Replace with your image asset path

                        ),
                      ),
                    );
                  },
                ),


                ListWidget(
                  title: "I Pad Pro 3",
                  subtitle: "8 GB | 128 GB | space gray",
                  textColor: Colors.black,
                  fontSize: 16.0,
                  price: "Price 738.82",
                  image: "assets/ipad.jpg",
                  fontWeight: FontWeight.bold,
                  cardColor: Color(0xFFF5EEF8),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailScreen(
                          // Pass any required data to the detail screen
                          name: "I Pad Pro 3",
                          price: "738.83 Doller",
                          storage: "8 GB | 128 GB | space gray",
                          image: "assets/ipad.jpg", // Replace with your image asset path

                        ),
                      ),
                    );
                  },
                ),



                ListWidget(
                  title: "Pen Drive",
                  subtitle: "8 GB",
                  textColor: Colors.black,
                  fontSize: 16.0,
                  price: "Price 5 Doller",
                  image: "assets/pendrive.jpg",
                  fontWeight: FontWeight.bold,
                  cardColor: Color(0xFFF5EEF8),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailScreen(
                          // Pass any required data to the detail screen
                          name: "Pen Drive",
                          price: "5 Doller",
                          storage: "8 GB",
                          image: "assets/pendrive.jpg", // Replace with your image asset path

                        ),
                      ),
                    );
                  },
                ),




              ],
            ),
          ],
        ),
      ),
    );
  }
}

