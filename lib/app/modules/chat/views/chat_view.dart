import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/routes/app_pages.dart';

import '../../../../core/components/widgets/reusable/circle_network_img.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_strings.dart';
import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chat'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){Get.toNamed(Routes.CHAT_DETAILS);},
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
