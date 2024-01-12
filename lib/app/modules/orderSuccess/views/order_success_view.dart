import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_success_controller.dart';

class OrderSuccessView extends GetView<OrderSuccessController> {
  const OrderSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrderSuccessView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OrderSuccessView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
