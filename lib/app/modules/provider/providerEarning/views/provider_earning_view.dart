import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/provider_earning_controller.dart';

class ProviderEarningView extends GetView<ProviderEarningController> {
  const ProviderEarningView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProviderEarningView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProviderEarningView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
