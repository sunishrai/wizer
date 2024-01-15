import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/orderDetails/views/order_details_view.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/orders_controller.dart';

class OrdersView extends GetView<OrdersController> {
  const OrdersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Orders'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
          itemBuilder: (_, i) => Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){Get.to(OrderDetailsView());},
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      child: const Icon(Icons.ac_unit),
                    ),
                    title: const Text(
                      "Yoga Fitness",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Joshef Aina",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "Monday, 15th Janvury - 11:50pm",
                          style: TextStyle(color: AppColors.subTextColor, fontSize: 10),
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        const Text(
                          '500AED',
                          style: TextStyle(color: Colors.green),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.activeChipColor,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                          child: const Text("Active",style: TextStyle(fontSize: 8),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.download_for_offline))

            ],
          ),
          itemCount: 3,
        ));
  }
}
