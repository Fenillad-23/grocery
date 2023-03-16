import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/utils/app_color.dart';

import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../../controller/otpController.dart';
import '../../utils/image_utils.dart';
import '../../utils/string_utils.dart';
import '../../widgets/TextView.dart';
import '../../widgets/image_view.dart';
import '../../widgets/raised_button.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Otpcontroller>(
      init: Otpcontroller(),
      builder: (_) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
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
                  StringUtils.enter_otp,
                  fontSize: 29,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 32),
                const TextView(
                  StringUtils.otp_hint,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 48,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: OTPTextField(
                          controller: _.otp,
                          length: 4,
                          width: MediaQuery.of(context).size.width,
                          fieldWidth: 50,
                          otpFieldStyle: OtpFieldStyle(
                              enabledBorderColor: AppColors.hint,
                              focusBorderColor: AppColors.green),
                          style: const TextStyle(fontSize: 17),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.box,
                          onCompleted: (pin) {},
                        ),
                      ),
                    ],
                  ),
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
                          // print('hello');
                          _.redirect_to();
                        }),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TextView(StringUtils.otpNotReceived),
                    TextView(
                      StringUtils.resendOtp,
                      textColor: AppColors.green,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
