import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wizer/core/theme/app_colors.dart';

class NameDesignationRatingCard extends StatelessWidget {
  const NameDesignationRatingCard({
    super.key,
    required this.name,
    required this.designation,
    required this.imgUrl,
    required this.rating,
    this.avatarSize=40
  });
  final String name, designation, imgUrl;
  final double rating,avatarSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    imgUrl,
                    width: avatarSize,
                    height: avatarSize,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    designation,
                    style: const TextStyle(color: AppColors.desingntionColor, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Text(
              rating.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RatingBarIndicator(
              rating: rating,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
          ],
        )
      ],
    );
  }
}
