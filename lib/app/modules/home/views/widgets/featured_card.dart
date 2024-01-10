import 'package:flutter/material.dart';
import 'package:wizer/core/theme/app_strings.dart';

import '../../../../../core/components/widgets/reusable/name_designation_card.dart';
import '../../../../../core/theme/app_colors.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      AppStrings.dummyCardImage,
                      height: 200,
                    ),
                  ),
                  NameDesignationCard(
                      name: "Martin D",
                      designation: "Top Rated Seller",
                      imgUrl: AppStrings.dummyProfileImage,
                      isFav: false,
                      onFavTap: () {}),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
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
                        SizedBox(
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
    );
  }
}
