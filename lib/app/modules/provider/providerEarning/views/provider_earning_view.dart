import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/orderSuccess/views/order_success_view.dart';
import 'package:wizer/core/theme/app_assets.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/provider_earning_controller.dart';

class ProviderEarningView extends GetView<ProviderEarningController> {
  const ProviderEarningView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          'Earning',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Container(
                  width: 82,
                  height: 82,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset(
                    AppAssets.totalEarning,
                    width: 50,
                    height: 50,
                  ),
                ),
                const Text(
                  "Total Balance",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "5,000 AED",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppColors.primary),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap:(){ Get.to(OrderSuccessView());},
                            child: Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Image.asset(
                                AppAssets.withdraw,
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                          const Text(
                            "Withdraw",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              AppAssets.history,
                              width: 30,
                              height: 30,
                            ),
                          ),
                          const Text(
                            "History",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Analytics",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),

          rowTextItem("Earning in December", "0 AED"),
          rowTextItem("Avg. Selling price", "0 AED"),
          rowTextItem("Active Orders", "110 AED"),
          rowTextItem("Available for withdrawal", "40 AED"),
          rowTextItem("Completed orders", "440 AED"),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Revenue",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),

          rowTextItem("Earning in December", "0 AED"),
          rowTextItem("Avg. Selling price", "0 AED"),
          rowTextItem("Active Orders", "110 AED"),
          rowTextItem("Available for withdrawal", "40 AED"),
          rowTextItem("Completed orders", "440 AED"),
        ],
      ),
    );
  }
}

Widget rowTextItem(String title, String price) {
  return  Container(
    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
        Text(
          price,
          style:
          const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    ),
  );
}
