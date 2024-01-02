import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wizer/core/components/extentions/sizedbox.ext.dart';
import 'package:wizer/core/theme/app_assets.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppAssets.slide_4PNG,
              ))),
      padding: const EdgeInsets.only(left: 8, right: 8, top: 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.logoWhitePNG),
          8.h,
          const Text(
            "Freelance Services \nOn Demand",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 32),
          ),
          const Text(
            "Get quality and professional service right to your doorsteps.",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          24.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppAssets.serviceProviderSVG,
                      width: 84,
                    ),
                    4.h,
                    const Text("I’m a Service Seeker")
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppAssets.serviceProviderSVG,
                      width: 84,
                    ),
                    4.h,
                    const Text("I’m a Service Provider")
                  ],
                ),
              )
            ],
          ),
          8.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Skip",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          16.h
        ],
      ),
    ));
  }
}
