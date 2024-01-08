import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:wizer/app/modules/otp/views/otp_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
                'Welcome to Wizer',
                style: TextStyle(fontSize: 24),
              ),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email or Username',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 08),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          InkWell(
            onTap: () {Get.to(ForgotPasswordView());},
            child: const Padding(
              padding: EdgeInsets.only(right: 14, top: 4, bottom: 10),
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 16, color: Color(0xff14AFB1)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            height: 46,
            width: double.infinity,
            child: TextButton(
              onPressed: (){ Get.to(OtpView());},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(color: Colors.white))),
                  foregroundColor:
                  MaterialStateProperty.all(const Color(0xffFFFFFF)),
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xff14AFB1))),
              child: const Text('Login'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                'Or Via Social networks',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            width: double.infinity,
            height: 46,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(color: Colors.white))),
                  foregroundColor:
                  MaterialStateProperty.all(const Color(0xffFFFFFF)),
                  backgroundColor:
                  MaterialStateProperty.all(const Color(0xff000000))),
              icon: const Icon(
                // <-- Icon
                Icons.apple,
                size: 24.0,
              ),
              label: const Text('Sign in with Apple'), // <-- Text
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: const BorderSide(color: Colors.black))),
                        foregroundColor:
                        MaterialStateProperty.all(const Color(0xff000000)),
                      ),
                      icon: const Icon(
                        // <-- Icon
                        Icons.facebook,
                        size: 24.0,
                        color: Colors.blueAccent,
                      ),
                      label: const Text('Facebook'), // <-- Text
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: const BorderSide(color: Colors.black))),
                        foregroundColor:
                        MaterialStateProperty.all(const Color(0xff000000)),
                      ),
                      icon: const Image(
                          image: AssetImage('assets/images/google.png')),
                      label: const Text('Google'), // <-- Text
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
