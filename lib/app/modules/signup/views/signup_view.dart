import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/otp/views/otp_view.dart';

import '../controllers/signup_controller.dart';

class SignUpView extends GetView<SignupController> {
  const SignUpView({Key? key}) : super(key: key);

// ************************* Sign up Screen **********************************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 14),
              child: Center(
                child:
                    Image(image: AssetImage('assets/images/splash_logo.png')),
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
                  hintText: 'Name',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 08),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),

            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 14, vertical: 08),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       hintText: 'Country',
            //     ),
            //   ),
            // ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 08),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CountryPickerDropdown(
                    initialValue: 'in',
                    itemBuilder: _buildDropdownItem,
                    onValuePicked: (Country country) {
                      print("${country.name}");
                    },
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                      onChanged: (value) {
                        // this.phoneNo=value;
                        print(value);
                      },
                    ),
                  ),
                ],
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

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 08),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Confirm Password',
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("Terms and Conditions"),
                    value: true,
                    onChanged: (newValue) {},
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              height: 46,
              width: double.infinity,
              child: TextButton(
                onPressed: (){Get.to(OtpView());},
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
                          foregroundColor: MaterialStateProperty.all(
                              const Color(0xff000000)),
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
                          foregroundColor: MaterialStateProperty.all(
                              const Color(0xff000000)),
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
      ),
    );
  }
}

Widget _buildDropdownItem(Country country) => Container(
      child: Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      ),
    );
