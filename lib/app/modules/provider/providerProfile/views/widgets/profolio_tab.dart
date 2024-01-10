import 'package:flutter/material.dart';
import 'package:wizer/core/theme/app_strings.dart';

class ProviderPortfolioTab extends StatelessWidget {
  const ProviderPortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            "Please inform the freelancer of any preferences or concerns regarding the use of AI tools in the completion and/or delivery of your order."),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            childAspectRatio: 01,
            mainAxisSpacing: 8,
            children: List.generate(4, (index) => Image.network(AppStrings.dummyCardImage,fit: BoxFit.cover,)),
          ),
        )
      ],
    );
  }
}
