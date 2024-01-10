import 'package:flutter/material.dart';
import 'package:wizer/core/components/extentions/sizedbox.ext.dart';
import 'package:wizer/core/components/widgets/reusable/circle_network_img.dart';
import 'package:wizer/core/theme/app_strings.dart';

class ProviderReviewTab extends StatelessWidget {
  const ProviderReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Overall rating",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                Text(
                  "4.5",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),8.w,
                ...List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ))
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleNetworkImage(imgPath: AppStrings.dummyProfileImage,),
                title: Text("Maikid360",style: TextStyle(fontSize: 14),),
                subtitle: Text("India",style: TextStyle(fontSize: 12)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Ash went above and beyond on this project. We are super pleased with the work done. This was out first time for our agency outsourcing design work"),
              )

            ],
          ),
        )
       ],
    );
  }
}
