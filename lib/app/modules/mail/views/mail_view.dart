import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/theme/app_colors.dart';
import 'package:wizer/core/theme/app_strings.dart';

import '../../../../core/components/widgets/reusable/circle_network_img.dart';
import '../controllers/mail_controller.dart';

class MailView extends GetView<MailController> {
  const MailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chat'),
          elevation: 1,
          centerTitle: true,
        ),
        body: ListView.builder(
            itemBuilder: (_, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: i == 2 ? AppColors.activeChatColor : null,
                    leading: const CircleNetworkImage(
                      size: 56,
                      imgPath: AppStrings.dummyProfileImage,
                    ),
                    trailing: const Icon(Icons.send),
                    title: const Text("Lorem Ipsum"),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Have you gotten the money I sent?"),
                        Text(
                          '10:00Am',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                    isThreeLine: true,
                  ),
                )));
  }
}
