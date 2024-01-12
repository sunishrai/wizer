import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/theme/app_strings.dart';

import '../../../../../core/components/widgets/reusable/circle_network_img.dart';
import '../../../../../core/theme/app_assets.dart';
import '../../../../../core/theme/app_colors.dart';
import '../controllers/provider_page_controller.dart';

class ProviderPageView extends GetView<ProviderPageController> {
  const ProviderPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.black),
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleNetworkImage(
                      imgPath: AppStrings.dummyProfileImage,
                      size: 56,
                    ),
                    const Text(
                      "Martin D",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Here’s how your’re doing",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          Image.asset(AppAssets.questionMark)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Response time",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            "0 hours",
                            style:
                                TextStyle(fontSize: 14, color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Seller level",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            "New Seller",
                            style:
                                TextStyle(fontSize: 14, color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Next evaluation",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            "Dec 15 2023",
                            style:
                                TextStyle(fontSize: 14, color: AppColors.primary),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Response rate",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          Text(
                            "100%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      margin: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Response rate",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          Text(
                            "100%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
        
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Response rate",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          Text(
                            "100%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      margin: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Response rate",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          Text(
                            "100%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
        
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Earnings",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  Text(
                    "View Details",
                    style:
                    TextStyle(fontSize: 14, color: AppColors.primary),
                  ),
                ],
              ),
            ),
        
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Available for withdrawal",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
        
                      Text(
                        "0 AED",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Earning in December",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
        
                      Text(
                        "0 AED",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Avg. selling price",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
        
                      Text(
                        "0 AED",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Active order",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
        
                      Text(
                        "0 AED",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payments being cleared",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
        
                      Text(
                        "0 AED",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Canceled orders",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
        
                      Text(
                        "0 AED",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(
                "To-Dos",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 8, top: 10),
              child: Text(
                "2 Unread messages",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 8, top: 10),
              child: Text(
                "My Works",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Statistics",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    "Last 7 days",
                    style:
                    TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Impressions",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    "6",
                    style:
                    TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
