import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/subcategory_controller.dart';

class SubcategoryView extends GetView<SubcategoryController> {
  const SubcategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network( // Replace with Image.asset if you have a local asset
                'https://via.placeholder.com/50', // Replace with your image URL or asset path
                height: 50, // Set the height to match your logo
              ),
              SizedBox(width: 10), // Spacing between logo and text
              Text(
                'Graphics & Design',
                style: TextStyle(
                  color: Colors.black, // Text color
                  fontSize: 20, // Font size
                ),
              ),
              Text(
                'Logo & Brand Identity',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: <Widget>[
                ...buildCategorySection('LOGO & BRAND IDENTITY', [
                  'Online Tutoring',
                  'Brand Style Guide',
                  'Business Cards & Stationery',
                  'Fonts & Typography',
                ]),
                ...buildCategorySection('GAMING', [
                  'Game Art',
                  'Graphics For Games',
                  'Twitch Store',
                ]),
                ...buildCategorySection('ART & ILLUSTRATION', [
                  'AI Artists',
                  'Children\'s Book Illustration',
                  'Pattern Design',
                  'Cartoon & Comics',
                  'Tattoo Design',
                  'NFT Art',
                ]),
                // Add more sections as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
List<Widget> buildCategorySection(String title, List<String> items) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black54, // Adjust color
          fontSize: 18, // Adjust font size
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    ...items.map(
          (item) => ListTile(
        title: Text(item),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          // Handle item tap
        },
      ),
    ),
  ];
}
