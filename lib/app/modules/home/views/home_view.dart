import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/home/views/widgets/section_view.dart';
import 'package:wizer/core/theme/app_assets.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../../../../tr_main.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 44,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset(
            AppAssets.logoPNG,
            height: 20,
            width: 20,
            fit: BoxFit.contain,
          ),
        ),
        title: const Text('Welcome Guest'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    hintText: "Search",
                    suffixIcon: const Icon(
                      Icons.search,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1)),
                    suffixStyle: const TextStyle(color: Colors.green)),
              ),
            ),
            CarouselSlider(
              items: [
                Image.network(
                    "https://www.shutterstock.com/image-illustration/pristine-reflective-lake-show-image-260nw-2305485315.jpg")
                // Add Image.network or Image.asset widgets for each item
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SectionTitle(title: 'Popular Services'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    4,
                    (index) => Container(
                          // padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),

                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.cardWhite),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  "https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg",
                                  height: 200,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
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
                                              style: TextStyle(color: Colors.amber, fontSize: 10),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 160,
                                    ),
                                    const Icon(Icons.favorite_border)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
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
                                    const SizedBox(
                                      width: 90,
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
                        )),
              ),
            ),
            SectionTitle(title: 'Featured Providers'),
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, i) => Container(
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.cardWhite),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                              child: Image.network(
                                "https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg",
                                height: 120,
                                fit: BoxFit.cover,
                                width: 120,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("Interior")
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
