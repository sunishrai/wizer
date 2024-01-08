import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App'),
        // Add more AppBar properties as needed
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // "What's new" carousel
            CarouselSlider(
              items: [
                Image.asset(
                    "https://www.shutterstock.com/image-illustration/pristine-reflective-lake-show-image-260nw-2305485315.jpg")
                // Add Image.network or Image.asset widgets for each item
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

            // "Featured Providers" section
            SectionTitle(title: 'Featured Providers'),
            // Use ListView.builder or another appropriate widget

            // "Popular Services" section
            SectionTitle(title: 'Popular Services'),
            // Use GridView.builder or another appropriate widget
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigate to 'See All' screen
            },
            child: Text(
              'See All',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
