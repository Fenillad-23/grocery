import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/widgets/image_view.dart';

import '../controller/splash_controller.dart';
import '../utils/image_utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init:SplashController() ,
      builder: (_) {
        return  Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  Padding(
                    padding: const EdgeInsets.only(left:68.0,right: 68.0),
                    child: ImageView(Image_utils.applogo, ImageType.asset,height: 513.16,width: 512, ),
                  )
          ],),
        );
      },
    );
  }
}
