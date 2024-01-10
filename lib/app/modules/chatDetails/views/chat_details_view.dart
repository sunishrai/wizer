import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/components/extentions/sizedbox.ext.dart';

import '../../../../core/components/widgets/reusable/circle_network_img.dart';
import '../../../../core/theme/app_strings.dart';
import '../controllers/chat_details_controller.dart';

class ChatDetailsView extends GetView<ChatDetailsController> {
  const ChatDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Martina D'),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(),
          _buildMessageComposer(),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                chatMessage("Hi Kitsbase, Let me know you need help and you can ask us any questions.", "08:20 AM", sentByMe: false),
                chatMessage("How to create a FinX Stock account?", "08:21 AM", sentByMe: true),
                chatMessage("Open the FinX Stock app to get started and follow the steps. FinX Stock doesn’t charge a fee to create or maintain your FinX Stock account.", "08:22 AM", sentByMe: false),
                // Add more messages here
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget chatMessage(String message, String time, {required bool sentByMe}) {
    final align = sentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final color = sentByMe ? Colors.lightBlueAccent : Colors.grey[200];
    final borderRadius = sentByMe
        ? const BorderRadius.only(
      topLeft: Radius.circular(15.0),
      bottomLeft: Radius.circular(15.0),
      topRight: Radius.circular(15.0),
    )
        : const BorderRadius.only(
      topRight: Radius.circular(15.0),
      bottomRight: Radius.circular(15.0),
      topLeft: Radius.circular(15.0),
    );

    return Column(
      crossAxisAlignment: align,
      children: <Widget>[
        Row(
          children: [
            if(!sentByMe)
              const CircleNetworkImage(imgPath: AppStrings.dummyProfileImage,size: 56,),
            4.w,

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                margin: EdgeInsets.only(top: 8,bottom: 8,left: sentByMe?32:0,right: sentByMe?0:32),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: borderRadius,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black87),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          time,
                          style: const TextStyle(color: Colors.black38, fontSize: 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            4.w,
            if(sentByMe)
              const CircleNetworkImage(imgPath: AppStrings.dummyProfileImage,size: 56,),
          ],
        ),
      ],
    );
  }

  Widget _buildMessageComposer() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
            margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),color: Colors.grey.withOpacity(0.3)),
            child: const TextField(
              decoration: InputDecoration.collapsed(
                hintText: 'Write a comment...',

              ),
              textInputAction: TextInputAction.send,
              // On submitted logic
              // onSubmitted: (value) => _handleSubmitted(value),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            // Send button logic
          },
        ),
      ],
    );
  }
}
