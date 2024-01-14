import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizer/app/modules/bookmark/views/bookmark_view.dart';
import 'package:wizer/app/modules/chat/views/chat_view.dart';
import 'package:wizer/app/modules/home/views/home_view.dart';
import 'package:wizer/app/modules/mail/views/mail_view.dart';
import 'package:wizer/app/modules/orders/views/orders_view.dart';
import 'package:wizer/app/modules/profile/views/profile_view.dart';
import 'package:wizer/app/modules/provider/providerPage/views/provider_page_view.dart';
import 'package:wizer/app/modules/provider/providerProfile/views/provider_profile_view.dart';
import 'package:wizer/app/modules/search/views/search_view.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final index = 0.obs;
  List<Widget> pages = [HomeView(), ChatView(), SearchView(), OrdersView(), ProfileView()];
  List<Widget> providerPages = [ProviderPageView(), ChatView(), OrdersView(), ProfileView()];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onNavChanged(int value) => index(value);
}
