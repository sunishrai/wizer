import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_complaints_controller.dart';

class OrderComplaintsView extends GetView<OrderComplaintsController> {
  const OrderComplaintsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrderComplaintsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OrderComplaintsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}