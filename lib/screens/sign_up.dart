import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/sign_up_controller.dart';
import '../utils/app_color.dart';
import '../utils/image_utils.dart';
import '../utils/string_utils.dart';
import '../validation/validator.dart';
import '../widgets/TextView.dart';
import '../widgets/edit_text.dart';
import '../widgets/image_view.dart';
import '../widgets/raised_button.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Signupcontroller>(
        init: Signupcontroller(),
        builder: (_) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Form(
                key: _.signupKey,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
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
                        StringUtils.signup,
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
                      const SizedBox(height: 24),
                      const TextView(
                        StringUtils.password_label,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 14),
                      Obx(
                        () => EditText(
                          obscureText: _.obscure.value,
                          controller: _.passwordController,
                          hint: StringUtils.password_hint,
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
                          borderRadius: 10,
                          validator: (value) =>
                              Validators.passwordValidator(value!, 'password'),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const TextView(
                        StringUtils.confirm_password_label,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 14),
                      Obx(
                        () => EditText(
                          obscureText: _.obscure.value,
                          controller: _.confirmpasswordController,
                          hint: StringUtils.password_hint,
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
                          borderRadius: 10,
                          validator: (value) =>
                              Validators.passwordValidator(value!, 'password'),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Obx(
                            () => Checkbox(
                              value: _.isSelected.value,
                              onChanged: (value) {
                                _.acceptTerms();
                              },
                              side: const BorderSide(
                                  color: AppColors.green, width: 2),
                              shape: const CircleBorder(),
                            ),
                          ),
                          const TextView(StringUtils.Terms_condtions,
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ],
                      ),
                      const SizedBox(height: 64),
                      AppRaisedButton(
                          title: StringUtils.signup,
                          borderRadius: 12,
                          buttoncolor: AppColors.green,
                          titleColor: AppColors.white,
                          titleFontWeight: FontWeight.w700,
                          onPressed: () {
                            _.signup();
                          }),
                      const SizedBox(height: 72),
                      GestureDetector(
                        onTap: () {
                          _.go_signin();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            TextView(
                              StringUtils.alreadyhaveaccount,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            TextView(
                              StringUtils.signin,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor: AppColors.green,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
