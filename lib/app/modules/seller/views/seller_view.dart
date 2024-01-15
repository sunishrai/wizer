import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/seller_controller.dart';

class SellerView extends GetView<SellerController> {
  const SellerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(
            20,
            (index) {
              return Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.cardWhite),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://pixlr.com/images/index/ai-image-generator-two.webp",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: const Text(
                        "Martina D",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      "Envision Tech",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5.9',
                          style: TextStyle(color: Colors.yellow),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text("(5.5728)  "),
                      ],
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
