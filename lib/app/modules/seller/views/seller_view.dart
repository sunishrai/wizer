import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/seller_controller.dart';

class SellerView extends GetView<SellerController> {
  const SellerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SellerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SellerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
