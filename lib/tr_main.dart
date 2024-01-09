import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Removes the shadow under the app bar
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        iconTheme: IconThemeData(color: Colors.black), // Changes the app bar icon color
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            child: Icon(Icons.person, size: 40),
            backgroundColor: Colors.grey.shade300,
          ),
          SizedBox(height: 8),
          Text('Guest', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text('Welcome to Wizer', style: TextStyle(fontSize: 16)),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('My Wizer', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.add_circle_outline),
                  title: Text('Join Wizer'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Sign in'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('General', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  trailing: Text('English'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Currency'),
                  trailing: Text('AED'),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Resources', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('Support'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet_outlined),
                  title: Text('Community and legal'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
