import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/gigs_controller.dart';

class GigsView extends GetView<GigsController> {
  const GigsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GigsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GigsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
