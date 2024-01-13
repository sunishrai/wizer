import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizer/core/components/extentions/sizedbox.ext.dart';

import '../base/base_button.dart';

class YesNoBottomSheet extends StatelessWidget {
  const YesNoBottomSheet({super.key, required this.title, required this.desc, required this.yesPressed});
  final String title,desc;
  final Function() yesPressed;


  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                InkWell(onTap: (){}, child: Icon(Icons.close))
              ],
            ),
            Divider(),
            8.h,
            Center(child: CircleAvatar(backgroundColor: Colors.red,child: Icon(Icons.delete),radius: 24,),),
            8.h,
            Center(child: Text(desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.center,)),
            8.h,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BaseButton.primary(label: "Yes", onPressed: (){},width: Get.width/3,),
                BaseButtonWithBorder(label: "No",onTap: (){
                  Get.back();
                },width: Get.width/3,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
