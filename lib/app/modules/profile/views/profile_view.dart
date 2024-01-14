import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/account/views/account_view.dart';
import 'package:wizer/app/modules/communityLeagal/views/community_leagal_view.dart';
import 'package:wizer/app/modules/notification/views/notification_view.dart';
import 'package:wizer/app/modules/provider/providerEarning/views/provider_earning_view.dart';
import 'package:wizer/app/modules/provider/providerProfile/views/provider_profile_view.dart';
import 'package:wizer/app/modules/savedList/views/saved_list_view.dart';
import 'package:wizer/app/modules/termsServeice/views/terms_serveice_view.dart';

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
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              Get.to(() => NotificationView());
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey.shade300,
            child: const Icon(Icons.person, size: 40),
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
                  leading: const Icon(Icons.wallet),
                  title: const Text('Earning'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Get.to(() => ProviderEarningView());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Saved List'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Get.to(() => SavedListView());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.people_outline_sharp),
                  title: const Text('Invite Friends'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Get.to(() => ProviderEarningView());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.play_arrow_rounded),
                  title: const Text('My Profile'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () { Get.to(() => ProviderProfileView());},
                ),
                ListTile(
                  leading: const Icon(Icons.backpack),
                  title: const Text('Add Package'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () { Get.to(() => ProviderProfileView());},
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Settings', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: const Icon(Icons.person_2),
                  title: const Text('Account'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {Get.to(() => AccountView());},
                ),
                ListTile(
                  leading: const Icon(Icons.notifications_outlined),
                  title: const Text('Notification'),
                  trailing: CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: true,
                    activeColor: Colors.green,
                    onChanged: (bool value) {},
                  ),
                  onTap: () {Get.to(() => AccountView());},
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
                ListTile(
                  leading: const Icon(Icons.notifications_outlined),
                  title: const Text('Online Status'),
                  trailing: CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: true,
                    activeColor: Colors.green,
                    onChanged: (bool value) {},
                  ),
                  onTap: () {Get.to(() => AccountView());},
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
                  onTap: () {Get.to(() => CommunityLeagalView());},
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
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
