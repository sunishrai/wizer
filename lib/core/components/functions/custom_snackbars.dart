import 'package:get/get.dart';
import 'package:flutter/material.dart';

showSnackBar(String title, {bool? isError, Color? color, int milliseconds = 1800}) {
  Get.snackbar(
    '',
    title,
    titleText: Center(
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    ),
    messageText: const SizedBox.shrink(),
    duration: Duration(milliseconds: milliseconds),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: color ??
        (isError == null
            ? Colors.black
            : isError == true
            ? Colors.red
            : const Color(0xff30BA00)),
    colorText: Colors.white,
    borderRadius: 0,
    borderWidth: 0,
    maxWidth: Get.width,
    margin: const EdgeInsets.all(0),
    padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
  );
}
