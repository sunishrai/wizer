import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/terms_serveice_controller.dart';

class TermsServeiceView extends GetView<TermsServeiceController> {
  const TermsServeiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermsServeiceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TermsServeiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
