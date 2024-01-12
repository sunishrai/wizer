import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/saved_list_controller.dart';

class SavedListView extends GetView<SavedListController> {
  const SavedListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SavedListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SavedListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
