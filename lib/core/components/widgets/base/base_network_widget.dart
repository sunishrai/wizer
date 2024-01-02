import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_response_handler.dart';

class BaseNetworkWidget<T> extends StatelessWidget {
  const BaseNetworkWidget(
      {super.key, required this.data, required this.childBuilder});
  final Rx<BaseResponseHandler<T>> data;
  final Widget Function(T data) childBuilder;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (data.value.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (data.value.noData) {
          return const Text('Data No Found');
        }
        if (data.value.response == null) {
          return const Text("No Data");
        }
        return childBuilder(data.value.response as T);
      },
    );
  }
}
