import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/theme/app_colors.dart';
import '../controllers/recently_viewed_controller.dart';

class RecentlyViewedView extends GetView<RecentlyViewedController> {
  const RecentlyViewedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button
          },
        ),
        title: const Text('Recently Viewed & More',
            style: TextStyle(color: Colors.black, fontSize: 18)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          TextButton(
            child: const Text('Edit',
                style: TextStyle(color: Colors.blue, fontSize: 18)),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(
            20, (index) {
              return Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.cardWhite),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg",
                        height: 120,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    "https://pixlr.com/images/index/ai-image-generator-two.webp",
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  )),
                              const SizedBox(
                                width: 8,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Martina D"),
                                  Text(
                                    "Martina D",
                                    style: TextStyle(
                                        color: Colors.amber, fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(Icons.favorite_border)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0, left: 8.0),
                      child: Row(
                        children: [
                          Text("From"),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "50 AED",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
