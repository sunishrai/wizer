import 'package:flutter/material.dart';
import 'package:wizer/core/theme/app_colors.dart';

class NameDesignationCard extends StatelessWidget {
  const NameDesignationCard(
      {super.key,
      required this.name,
      required this.designation,
      required this.imgUrl,
      required this.isFav,
      required this.onFavTap});
  final String name, designation, imgUrl;
  final bool isFav;
  final Function() onFavTap;

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
        IconButton(
            onPressed: () => onFavTap(),
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.pink : Colors.grey,
            ))
      ],
    );
  }
}
