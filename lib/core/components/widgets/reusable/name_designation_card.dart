import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wizer/core/theme/app_colors.dart';

class NameDesignationCard extends StatelessWidget {
  const NameDesignationCard(
      {super.key,
      required this.name,
      required this.designation,
      required this.imgUrl,
      this.isFav = false,
      this.rating = -1,
      this.onFavTap});
  final String name, designation, imgUrl;
  final bool isFav;
  final double rating;
  final Function()? onFavTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  imgUrl,
                  width: 30,
                  height: 30,
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
        rating > 0
            ? Row(
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
            : IconButton(
                onPressed: () => onFavTap!(),
                icon: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  color: isFav ? Colors.pink : Colors.grey,
                ))
      ],
    );
  }
}
