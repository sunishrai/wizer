import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/savedListDetails/views/saved_list_details_view.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/saved_list_controller.dart';

class SavedListView extends GetView<SavedListController> {
  const SavedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Saved List'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Get.back();
            },
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              20,
              (index) {
                return InkWell(
                  onTap: () {Get.to(SavedListDetailsView());},
                  child: Container(
                    // width: double.infinity,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.cardWhite),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            "https://demo.sirv.com/looks.jpg?w=650",
                            // "https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg",
                            height: 120,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Save list name',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  Text(
                                    '5 Gigs',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
