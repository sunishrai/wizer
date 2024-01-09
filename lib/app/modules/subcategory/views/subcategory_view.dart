import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/subcategory_controller.dart';

class SubcategoryView extends GetView<SubcategoryController> {
  const SubcategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SubcategoryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SubcategoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
