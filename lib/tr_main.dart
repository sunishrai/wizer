import 'package:flutter/material.dart';
import 'package:wizer/core/components/widgets/reusable/circle_network_img.dart';
import 'package:wizer/core/theme/app_strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          _buildProfileHeader(context),
          _buildUserInfo(context),
          // Add more sections here as needed
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Column(
      children: <Widget>[
       CircleNetworkImage(imgPath: AppStrings.dummyProfileImage),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Martina D",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              "@Martin",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Envision Tech",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 8.0),
          Text(
            'Hi, my name is Martina D and I am team leader of grow studio. We are professional Graphic Designer with over 8 years of experience with expertise in ...', // Truncate and add the rest of the bio
            style: Theme.of(context).textTheme.bodyText1,
          ),
          // Add more Text Widgets for additional information
        ],
      ),
    );
  }
}
