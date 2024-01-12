import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/community_leagal_controller.dart';

class CommunityLeagalView extends GetView<CommunityLeagalController> {
  const CommunityLeagalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommunityLeagalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CommunityLeagalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
