import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/components/widgets/reusable/yes_no_bottomsheet.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Details',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            accountItem(Icons.person, "Name", "Martina D"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            accountItem(
                Icons.email_outlined, "Email ", "Martina.D4584@gmail.com"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            accountItem(Icons.edit_location_rounded, "Country", "Dubai"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            accountItem(Icons.call, "Phone Number", "+971 58 58994"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Account Management',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                Get.bottomSheet(YesNoBottomSheet(
                    title: "Delete Account",
                    desc: "Are You sure you want to Delete this Account?",
                    yesPressed: () {}));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 28.0, right: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.delete_outline,
                      color: Colors.grey,
                      size: 25,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text(
                          'Deactivation and deletion',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget accountItem(IconData iconData, String title, String value) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.grey,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
