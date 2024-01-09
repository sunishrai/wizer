import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../controllers/forgot_password_controller.dart';


class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
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
                  'Get quality and professional service right to your doorstep.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child:    const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 08),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Email Address',
                    ),
                  ),
                ),
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
                        '',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 14, top: 4, bottom: 10),
                    child: Text(
                      'Login',
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
                onPressed: null,
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
