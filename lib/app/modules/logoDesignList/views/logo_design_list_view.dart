import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/productDetail/views/product_detail_view.dart';

import '../controllers/logo_design_list_controller.dart';

class LogoDesignListView extends GetView  <LogoDesignListController> {
  const LogoDesignListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('Logo Design', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 5, // Number of list items
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){Get.to(ProductDetailView());},
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.5)),borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
                        child: Image.network(
                          "https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg",
                          height: 140,
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage('assets/user_avatar.png'), // Replace with your image path
                              ),
                              trailing: Icon(Icons.favorite),
                              title: Text(
                                'Martina D',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "Top Rated Seller",
                                style: TextStyle(color: Colors.yellow),
                              ),
                            ),
                            const Text("I will design instagram post, google ads, facebook ad"),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                              child: const Row(
                                children: [
                                  Text("From"),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "50 AED",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text("(5.5728)  "),
                                  Text(
                                    '5.9',
                                    style: TextStyle(color: Colors.yellow),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
