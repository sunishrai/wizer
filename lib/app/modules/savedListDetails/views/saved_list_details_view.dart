import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/saved_list_details_controller.dart';

class SavedListDetailsView extends GetView<SavedListDetailsController> {
  const SavedListDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SavedListDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SavedListDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
