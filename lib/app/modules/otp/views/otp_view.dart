import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:wizer/app/modules/dashboard/views/dashboard_view.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
      ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: Center(
                child: Image(image: AssetImage('assets/images/splash_logo.png')),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Center(
                child: Text(
                  'Authentication',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Center(
                child: Text(
                  'We have sent a code to your phone number. Enter the code below to continue',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: OTPTextField(
                    // controller: controller.otpController,
                    length: 5,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 15,
                    style: TextStyle(fontSize: 17),
                    onChanged: (pin) {
                      print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 14, top: 4, bottom: 10),
                      child: Text(
                        '4:59',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 14, top: 4, bottom: 10),
                    child: Text(
                      'Resend Code',
                      style: TextStyle(fontSize: 16, color: Color(0xff14AFB1)),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              height: 46,
              width: double.infinity,
              child: TextButton(
                onPressed: () {Get.to(DashboardView());},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: const BorderSide(color: Colors.white))),
                    foregroundColor:
                    MaterialStateProperty.all(const Color(0xffFFFFFF)),
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xff14AFB1))),
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
    );
  }
}
