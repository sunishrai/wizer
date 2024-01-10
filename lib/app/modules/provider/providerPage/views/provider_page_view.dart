import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/provider_page_controller.dart';

class ProviderPageView extends GetView<ProviderPageController> {
  const ProviderPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProviderPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProviderPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
