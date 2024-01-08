import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchPageController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 56.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  hintText: "Search",
                  suffixIcon: const Icon(
                    Icons.search,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1)),
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Divider(),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              CircleAvatar(radius: 24,child: Icon(Icons.abc)),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fitness"),
                  Text(
                    "Diet Maintaning",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
