import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/utils/app_color.dart';
import 'package:grocery/widgets/TextView.dart';
import 'package:grocery/widgets/edit_text.dart';

import '../controller/sign_in_controller.dart';
import '../utils/image_utils.dart';
import '../utils/string_utils.dart';
import '../validation/validator.dart';
import '../widgets/image_view.dart';
import '../widgets/raised_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SigninController>(
        init: SigninController(),
        builder: (_) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Form(
                key: _.signinKey,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
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
                        StringUtils.signin,
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
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          _.go_forgotpassword();
                        },
                        child: const Align(
                          alignment: Alignment.topRight,
                          child: TextView(StringUtils.forgotpassword,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              textColor: AppColors.green),
                        ),
                      ),
                      const SizedBox(height: 64),
                      AppRaisedButton(
                          title: StringUtils.signin,
                          borderRadius: 12,
                          buttoncolor: AppColors.green,
                          titleColor: AppColors.white,
                          titleFontWeight: FontWeight.w700,
                          onPressed: () {
                            _.signin();
                          }),
                      const SizedBox(height: 40),
                      Row(
                        children: const [
                          Expanded(
                              child: Divider(
                            endIndent: 16,
                            thickness: 1,
                          )),
                          TextView(
                            StringUtils.continuewith,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          Expanded(
                              child: Divider(
                            indent: 16,
                            thickness: 1,
                          ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 110.0, right: 110, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: AppRaisedButton(
                              title: '',
                              borderRadius: 12,
                              onPressed: () {},
                              bordercolor: AppColors.green,
                              child: ImageView(
                                  Image_utils.google_logo, ImageType.asset),
                            )),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                                child: AppRaisedButton(
                              title: '',
                              borderRadius: 12,
                              onPressed: () {},
                              bordercolor: AppColors.green,
                              child: ImageView(
                                Image_utils.facebook_logo,
                                ImageType.asset,
                                color: AppColors.green,
                              ),
                            ))
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          _.go_signup();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            TextView(
                              StringUtils.donthaveaccount,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                            TextView(StringUtils.signup,
                                textColor: AppColors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 15)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar:
                ImageView(Image_utils.animatedContainer, ImageType.asset),
          );
        });
  }
}
