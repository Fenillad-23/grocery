import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/validation/validator.dart';

import '../../controller/resetpasswordcontroller.dart';
import '../../utils/app_color.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/edit_text.dart';
import '../../widgets/image_view.dart';
import '../../widgets/raised_button.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(
      init: ResetPasswordController(),
      builder: (_) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Form(
              key: _.newPassword,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
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
                      StringUtils.newpassword,
                      fontSize: 29,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 32),
                    const TextView(
                      StringUtils.password_label,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Obx(
                      () => EditText(
                        obscureText: _.obscure.value,
                        hint: StringUtils.newpassword,
                        controller: _.newpassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            _.altervisibiltiy();
                          },
                          icon: _.obscure.value
                              ? ImageView(
                                  Image_utils.visibility,
                                  ImageType.asset,
                                  height: 14,
                                  width: 14,
                                )
                              : ImageView(
                                  Image_utils.visibility_off,
                                  ImageType.asset,
                                  height: 14,
                                  width: 14.5,
                                ),
                        ),
                        validator: (value) => Validators.passwordValidator(
                            value!, ' new password'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const TextView(
                      StringUtils.confirm_password_label,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Obx(
                      () => EditText(
                        obscureText: _.obscure.value,
                        hint: StringUtils.confirm_password_hint,
                        controller: _.confirmpassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            _.altervisibiltiy();
                          },
                          icon: _.obscure.value
                              ? ImageView(
                                  Image_utils.visibility,
                                  ImageType.asset,
                                  height: 14,
                                  width: 14,
                                )
                              : ImageView(
                                  Image_utils.visibility_off,
                                  ImageType.asset,
                                  height: 14,
                                  width: 14.5,
                                ),
                        ),
                        validator: (value) => Validators.passwordValidator(
                            value!, 'confirm password'),
                      ),
                    ),
                    const SizedBox(height: 64),
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
                              _.verifyPassword();
                            }),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
