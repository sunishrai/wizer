import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Enter a product name eg. pension',
                hintStyle: const TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 4,
                    color: Colors.amber,
                    style: BorderStyle.solid,
                  ),
                ),
                filled: true,
                contentPadding: const EdgeInsets.all(16),
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
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.4)),borderRadius: BorderRadius.circular(8), color: AppColors.cardWhite),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: Image.network(
                                    "https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg",
                                    height: 200,
                                  ),
                                ),
                                Row(
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
                                        const SizedBox(width: 8,),
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Martina D"),
                                            Text(
                                              "Martina D",
                                              style: TextStyle(color: Colors.amber,fontSize: 10),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 160,),
                                    const Icon(Icons.favorite_border)
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    const Text("From"),
                                    SizedBox(width: 8,),
                                    const Text("50 AED",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
              ),
            ),
            SectionTitle(title: 'Featured Providers'),
          ],
        ),
      ),
    );
  }
}
