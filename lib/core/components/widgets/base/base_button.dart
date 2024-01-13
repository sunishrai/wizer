import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_colors.dart';

class BaseButton extends StatelessWidget {
  BaseButton.primary(
      {super.key,
      this.color = AppColors.primary,
      this.textColor = AppColors.white,
      required this.label,
      required this.onPressed,
      this.futureOnPressed,
      this.width});
  // BaseButton.secondary(
  //     {super.key,
  //     this.color = AppColors.white,
  //     this.textColor = Colors.white,
  //     required this.label,
  //     required this.onPressed,
  //     this.futureOnPressed,
  //     this.width});
  BaseButton.futureButton(
      {super.key,
      this.color = AppColors.primary,
      this.textColor = Colors.white,
      required this.label,
      this.onPressed,
      required this.futureOnPressed,
      this.width});
  final Color color;
  final String label;
  final Color textColor;
  final VoidCallback? onPressed;
  final Future<void> Function()? futureOnPressed;
  final double? width;
  final RxBool _isLoading = false.obs;
  @override
  Widget build(BuildContext context) {
    void handleOnPressed() async {
      _isLoading(true);

      try {
        if (futureOnPressed != null) {
          await futureOnPressed!();
        }
      } catch (e) {
        log('Error: $e', name: 'Base Button');
      } finally {
        _isLoading(false);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: width,
        height: 44,
        child: Obx(() {
          return _isLoading.value
              ? Transform.scale(
                  scale: 0.5,
                  child: const Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  ),
                )
              : TextButton(
                  onPressed: onPressed ?? handleOnPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(
                    label,
                    style: TextStyle(color: textColor, fontSize: 14),
                  ),
                );
        }),
      ),
    );
  }
}


class BaseButtonWithBorder extends StatelessWidget {
  const BaseButtonWithBorder({super.key, required this.onTap, required this.label, this.isPrimmary = false, this.width});
  final Function()? onTap;
  final String label;
  final bool isPrimmary;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        alignment: Alignment.center,
        width: width,
        height: 44,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: isPrimmary ? AppColors.primary : Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1.6, color: AppColors.primary),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isPrimmary ? Colors.white : AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
