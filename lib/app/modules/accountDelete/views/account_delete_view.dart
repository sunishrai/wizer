import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_delete_controller.dart';

class AccountDeleteView extends GetView<AccountDeleteController> {
  const AccountDeleteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountDeleteView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AccountDeleteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
