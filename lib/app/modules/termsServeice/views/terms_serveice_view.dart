import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/terms_serveice_controller.dart';

class TermsServeiceView extends GetView<TermsServeiceController> {
  const TermsServeiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button
          },
        ),
        title: const Text('Terms of service'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          'The Terms and Conditions (T&C) for Know Your Customer (KYC) are the set of rules and guidelines that outline the procedures, requirements, and responsibilities related to the process of verifying the identity of customers as mandated by regulatory authorities and financial institutions. KYC is an essential part of anti-money laundering (AML) and counter-terrorism financing (CTF) efforts to prevent financial crimes. Below are some typical clauses that may be included in the KYC Terms and Conditions: Purpose of KYC: This section explains the objective of the KYC process, which is to establish and verify the identity of customers to ensure compliance with applicable laws and regulations.',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
