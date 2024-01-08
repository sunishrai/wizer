import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mail_controller.dart';

class MailView extends GetView<MailController> {
  const MailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
