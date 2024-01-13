import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_complaints_controller.dart';

class OrderComplaintsView extends GetView<OrderComplaintsController> {
  const OrderComplaintsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complaints',style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),),
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
