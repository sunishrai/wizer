import 'package:flutter/material.dart';
import 'package:wizer/core/components/extentions/sizedbox.ext.dart';
import 'package:wizer/core/theme/app_colors.dart';

class ProviderProfileTab extends StatelessWidget {
  const ProviderProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          8.h,
          const Text(
            "User Information",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
            "Hi, My name is Martina D and I am team leader of grow studio. We are professional Graphic Designer with over 8 years of experience with expertise in ......",
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          const IconTextCard(
            title: 'From',
            subTitle: 'Indonesia (Tue 6:45 PM)',
            iconPath: '',
          ),
          const IconTextCard(
            title: 'From',
            subTitle: 'Indonesia (Tue 6:45 PM)',
            iconPath: '',
          ),
          16.h,
          const Text(
            "Language",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const IconTextCard(
            title: 'English',
            subTitle: 'Fluent',
            iconPath: '',
          ),
        ],
      ),
    );
  }
}

class IconTextCard extends StatelessWidget {
  const IconTextCard({super.key, required this.title, required this.subTitle, required this.iconPath});
  final String title, subTitle, iconPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.location_on),
      title: Text(
        title,
        style: const TextStyle(color: AppColors.subTextColor, fontSize: 13),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
