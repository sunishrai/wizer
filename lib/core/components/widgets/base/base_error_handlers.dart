import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_button.dart';

class UnAuthorizedAccess extends StatelessWidget {
  const UnAuthorizedAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.warning_rounded,
            size: 36,
          ),
          const Text("Unauthorized access!!"),
          BaseButton.primary(width: Get.width/2,label: "Okay", onPressed: () => Get.back())
        ],
      ),
    );
  }
}

class NoDataFound extends StatelessWidget {
  const NoDataFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "AppAssets.noDataPng",
            width: 100,
            height: 100,
            errorBuilder: (_, __, ___) => const Icon(Icons.warning_rounded,size: 36,),
          ),
          const Text("No Data Found"),
          BaseButton.primary(width: Get.width/2,label: "Okay", onPressed: () => Get.back())
        ],
      ),
    );
  }
}
