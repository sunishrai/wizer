import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/bookmark/views/bookmark_view.dart';
import 'package:wizer/app/modules/dashboard/views/dashboard_view.dart';
import 'package:wizer/app/modules/orders/views/orders_view.dart';
import 'package:wizer/core/theme/app_assets.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/order_success_controller.dart';

class OrderSuccessView extends GetView<OrderSuccessController> {
  const OrderSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Successful'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(AppAssets.thankyou),
          const Text('Order booked successfully'),
          InkWell(
            onTap: () {Get.to(() => OrdersView());},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('View order list', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 14,vertical: 20),
            height: 46,
            width: double.infinity,
            child: TextButton(
              onPressed: (){
                Get.to(() => DashboardView());
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(color: Colors.white))),
                  foregroundColor:
                  MaterialStateProperty.all(const Color(0xffFFFFFF)),
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xff14AFB1))),
              child: const Text('Go To Home'),
            ),
          ),
        ],
      ),
    );
  }
}
