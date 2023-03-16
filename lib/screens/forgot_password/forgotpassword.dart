import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/forgotpasswordcontroller.dart';
import '../../utils/app_color.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/edit_text.dart';
import '../../widgets/image_view.dart';
import '../../widgets/raised_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Forgotpasswordcontroller>(
      init: Forgotpasswordcontroller(),
      builder: (_) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Center(
                    child: ImageView(
                      Image_utils.applogo,
                      ImageType.asset,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const TextView(
                  StringUtils.forgotpassword,
                  fontSize: 29,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 32),
                const TextView(
                  StringUtils.email_lable,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 14),
                EditText(
                  hint: StringUtils.email_hint,
                  controller: _.emailController,
                  suffixIcon: ImageView(
                    Image_utils.mail_logo,
                    ImageType.asset,
                    height: 10.5,
                    width: 11.67,
                    color: AppColors.hint,
                  ),
                  borderRadius: 10,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter email";
                    }
                    if (!value.isEmail) {
                      return " Enter valid mail id";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppRaisedButton(
                        title: StringUtils.submit,
                        borderRadius: 12,
                        height: 48,
                        width: 270,
                        buttoncolor: AppColors.green,
                        titleColor: AppColors.white,
                        titleFontWeight: FontWeight.w700,
                        onPressed: () {
                          print('hello');
                          _.go_otpScreen();
                        }),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
