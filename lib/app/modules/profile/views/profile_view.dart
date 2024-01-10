import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Removes the shadow under the app bar
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        iconTheme: const IconThemeData(color: Colors.black), // Changes the app bar icon color
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            child: const Icon(Icons.person, size: 40),
            backgroundColor: Colors.grey.shade300,
          ),
          const SizedBox(height: 8),
          const Text('Guest', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const Text('Welcome to Wizer', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('My Wizer', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: const Icon(Icons.add_circle_outline),
                  title: const Text('Join Wizer'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Sign in'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('General', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text('Language'),
                  trailing: const Text('English'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.money),
                  title: const Text('Currency'),
                  trailing: const Text('AED'),
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Resources', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: const Icon(Icons.help_outline),
                  title: const Text('Support'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.account_balance_wallet_outlined),
                  title: const Text('Community and legal'),
                  trailing: const Icon(Icons.chevron_right),
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
