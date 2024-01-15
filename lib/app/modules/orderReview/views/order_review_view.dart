import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/orderReview/controllers/order_review_controller.dart';
import 'package:wizer/app/modules/orderSuccess/views/order_success_view.dart';
import 'package:wizer/core/components/widgets/base/base_button.dart';
import 'package:wizer/core/theme/app_assets.dart';
import 'package:wizer/core/theme/app_colors.dart';

class OrderReviewView extends GetView<OrderReviewController> {
  const OrderReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title:
            const Text('Order review', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  // Get.to(ProductDetailView());
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16)),
                            child: Image.network(
                              "https://img.freepik.com/free-photo/space-background-realistic-starry-night-cosmos-shining-stars-milky-way-stardust-color-galaxy_1258-154643.jpg",
                              height: 140,
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(AppAssets
                                        .logoPNG), // Replace with your image path
                                  ),
                                  trailing: Icon(Icons.favorite_outline_rounded),
                                  title: Text(
                                    'Martina D',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "Top Rated Seller",
                                    style: TextStyle(color: Colors.yellow),
                                  ),
                                ),
                                const Text(
                                    "I will design instagram post, google ads, facebook ad"),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5)),
                                  child: const Row(
                                    children: [
                                      Text("From"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "50 AED",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text("(5.5728)  "),
                                      Text(
                                        '5.9',
                                        style: TextStyle(color: Colors.yellow),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 10),
                child: const Text(
                  'Add payment method',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: AppColors.primary),
                          color: AppColors.primary),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset(AppAssets.creditCard)),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: const Text(
                        'Credit or debit Card',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.grey),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset(AppAssets.payPal)),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: const Text(
                        'PayPal',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 1,
                  )),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: const Text(
                  'Order details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Basic Package',
                      style:
                          TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                    Text(
                      '1,252 AED',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Image.asset(AppAssets.tick),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      '4 Revision',
                      style:
                          TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(AppAssets.tick),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      '1 Number of concepts included',
                      style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(AppAssets.tick),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Logo transparency',
                      style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ),
                ],
              ),
        
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 1,
                  )),
        
              Container(
                margin: EdgeInsets.only(top: 10),
                child: const Text(
                  'Order Summary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
        
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                    Text(
                      '1,252 AED',
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ],
                ),
              ),
        
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Service Tax',
                      style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                    Text(
                      '252 AED',
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ],
                ),
              ),
        
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 1,
                  )),
        
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Promo Code',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      'Enter a Code',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: AppColors.primary),
                    ),
                  ],
                ),
              ),
        
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 1,
                  )),
        
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      '252 AED',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ],
                ),
              ),
        
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery date',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      'Sunday, Dec 17,2023',
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'You Will be charged 1,604 AED in Emirati dirham. This total includes any applicable exchange rate',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ),
        
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 1,
                  )),
        
              BaseButton.primary(
                label: "Add payment method",
                onPressed: () {
                  Get.bottomSheet(ColoredBox(
                    color: Colors.white,
                    child: addNewCard(),
                  ));
                },
                width: double.infinity,
              ),
        
              Center(
                child: Text(
                  'Your payment information is secure',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget addNewCard() {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Add New Card',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
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

        Container(
          margin: EdgeInsets.only(top: 18, bottom: 8),
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Card Number',
            ),
          ),
        ),

        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 08),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'MM/YY',
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 08),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'CVV',
                  ),
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 08),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'First Name',
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 08),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Last Name',
                  ),
                ),
              ),
            ),
          ],
        ),
        BaseButton.primary(
          label: "Pay Now (1,604 AED)",
          onPressed: () {
            Get.to(() => OrderSuccessView());
          },
          width: double.infinity,
        ),

        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            'You Will be charged 1,604 AED in Emirati dirham. This total includes any applicable exchange rate',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          ),
        ),
      ],
    ),
  );
}
