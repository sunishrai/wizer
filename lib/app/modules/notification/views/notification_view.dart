import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/components/widgets/base/base_widget.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      title: "Notification",
      customAppBar: AppBar(
        elevation: 0, // Removes the shadow under the app bar
        backgroundColor: Colors.transparent, // Makes the app bar transparent
        iconTheme: const IconThemeData(color: Colors.black), // Changes the app bar icon color
      ),
      child: ListView.builder(
          itemCount: 7,
          itemBuilder: (_, i) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: i<3?AppColors.primary.withOpacity(0.3):Colors.transparent,
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    radius: 24,
                    child: Icon(Icons.notifications),
                  ),
                  title: Text(
                    'Order Accepted',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // trailing: IconButton(onPressed: (){}, icon: Icon(Icons.elevator_rounded)),
                  subtitle: Text('Your order was accepted'),
                ),
          )),
    );
  }
}
