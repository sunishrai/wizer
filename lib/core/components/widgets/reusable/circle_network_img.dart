import 'package:flutter/cupertino.dart';

class CircleNetworkImage extends StatelessWidget {
  const CircleNetworkImage({super.key, required this.imgPath,  this.size=30,});
  final String imgPath;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          imgPath,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ));
  }
}
