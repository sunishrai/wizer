import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:wizer/core/components/widgets/base/base_button.dart';
import 'package:wizer/core/theme/app_assets.dart';

import '../controllers/order_complaints_controller.dart';

class OrderComplaintsView extends GetView<OrderComplaintsController> {
  const OrderComplaintsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {Get.back();},
        ),
        title: const Text('Complaints',style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      bottomNavigationBar:  Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: BaseButton.primary(
          label: "Submit Complaint",
          onPressed: () {
            Get.bottomSheet(
                ColoredBox(
              color: Colors.white,
              child: complainSuccessBottomSheet(),
            ));
          },
          width: double.infinity,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            // Divider(height: 1, color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AppAssets
                          .logoPNG), // Replace with your image path
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Martina D',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'Top Rated Seller',
                            style: TextStyle(fontSize: 14, color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      '4.9',
                      style: TextStyle(fontSize: 18, color: Colors.amber, fontWeight: FontWeight.bold),
                    ),
                    RatingBarIndicator(
                      rating: 3.0,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      unratedColor: Colors.amber.withAlpha(50),
                      direction: false ? Axis.vertical : Axis.horizontal,
                    ),
                  ],
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 12),
              child: Divider(height: 1, color: Colors.grey,)),

            Container(
              margin: EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(AppAssets.totalEarning), // Replace with your image path
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UI/UX Design Sample...',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Monday, 5th January - 11:50pm',
                              style: TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Icon(Icons.flag_outlined, color: Colors.red,)
                ],
              ),
            ),

            Container(
                margin: EdgeInsets.only(top: 12),
                child: Divider(height: 1, color: Colors.grey,)),

            Container(
              margin: EdgeInsets.only(top: 18, bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name',
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Subject',
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Payment Related issue',
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, bottom: 8),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                minLines: 3, // Set this
                maxLines: 6, // and this
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Description',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget complainSuccessBottomSheet(){
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'Complaint',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
                margin: EdgeInsets.all(10),
                child: InkWell(
                    onTap: (){Get.back();},
                    child: Icon(Icons.close, color: Colors.black,))),
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Divider(
              height: 1,
            )),

        Container(margin: EdgeInsets.only(top: 20),
        child: Image.asset(AppAssets.success)),

        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Complaint sent successfully',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Your complaint was successfully sent, a staff from our organization will look into it.',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 10),
          child: BaseButton.primary(
            label: "Done",
            onPressed: () {
              Get.back();
            },
            width: double.infinity,
          ),
        ),
      ],
    ),
  );
}
