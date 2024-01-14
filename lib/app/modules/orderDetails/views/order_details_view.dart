import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/components/widgets/reusable/name_designation_rating_card.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_strings.dart';
import '../controllers/order_details_controller.dart';

class OrderDetailsView extends GetView<OrderDetailsController> {
  const OrderDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order List',style: TextStyle(fontSize: 18),),
        centerTitle: true,
        leading:  IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {Get.back();},
        ),

        actions: [
          IconButton(
            icon: Text('Complaint',style: TextStyle(color: Colors.red),),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        child: const Icon(Icons.ac_unit),
                      ),
                      title: const Text(
                        "Yoga Fitness",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Joshef Aina",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "Monday, 15th Janvury - 11:50pm",
                            style: TextStyle(color: AppColors.subTextColor, fontSize: 10),
                          ),
                        ],
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.activeChipColor,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        child: const Text(
                          "Active",
                          style: TextStyle(fontSize: 8),
                        ),
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.download_for_offline))
                ],
              ),
              Divider(),
              Text(
                'I will do SASS design web app UI UX and desktop application design in Figma',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 16),
              Text('Services:', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              ...[
                'SaaS UI UX',
                'Web App Design',
                'Desktop Application',
                'Website UI UX',
                'Web app UI UX',
                'Dashboard Design',
              ].map((service) => Text('• $service')),
              SizedBox(height: 16),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 3,
                children: List.generate(
                  4,
                      (index) => ListTile(
                    title: Text('Package', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Basic Package'),
                    leading: Icon(Icons.score_rounded),
                  ),
                ),
              ),
              Divider(),
              ...List.generate(4, (index) =>  ListTile(
                trailing: Icon(Icons.check, color: Colors.green),
                title: Text('Prompt Creation'),
              ),),
              Divider(),
              NameDesignationRatingCard(
                  name: "Martin D",
                  designation: "Top Rated Seller",
                  imgUrl: AppStrings.dummyProfileImage,rating: 4.6,),
            ],
          ),
        ),
      ),
    );
  }
}
