// import 'package:flutter/material.dart';
//
//
// class AppPinPutButton extends StatelessWidget {
//   bool obscureText;
//   bool forceErrorState;
//   String obscurePattern;
//   String errorText;
//   FormFieldValidator<dynamic> validator;
//   ValueChanged<String> onCompleted;
//   TextEditingController pincontroller;
//
//   AppPinPutButton(
//       {super.key,
//       required this.obscureText,
//       required this.validator,
//       required this.obscurePattern,
//       required this.errorText,
//       required this.onCompleted,
//       required this.pincontroller,
//       required this.forceErrorState});
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Pinput(
//       controller: pincontroller,
//       length: 4,
//       pinContentAlignment: Alignment.center,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
//       showCursor: true,
//       errorText: errorText,
//       forceErrorState: forceErrorState,
//       cursor: const SizedBox.shrink(),
//       pinAnimationType: PinAnimationType.slide,
//       keyboardType: TextInputType.number,
//       toolbarEnabled: true,
//       obscureText: obscureText,
//       obscuringWidget: const Padding(
//         padding: EdgeInsets.all(5.0),
//         child: Text(
//           "*",
//           style: TextStyle(
//               fontSize: 14,
//               color: AppColor.black,
//               fontWeight: FontWeight.w400,
//               fontFamily: ''),
//         ),
//       ),
//       onCompleted: onCompleted,
//       validator: validator,
//       errorTextStyle: TextStyle(fontSize: 12, color: darkTheme.errorColor),
//       defaultPinTheme: PinTheme(
//         textStyle:
//             const TextStyle(color: AppColor.black, fontWeight: FontWeight.w700),
//         decoration: BoxDecoration(
//           border: Border.all(
//               color: obscureText ? Colors.white : Colors.grey, width: 0.3),
//           color: obscureText ? AppColor.litegray : AppColor.white,
//           borderRadius: const BorderRadius.all(
//             Radius.circular(50),
//           ),
//         ),
//         height: height * 0.06,
//         width: width * 0.13,
//       ),
//       inputFormatters: Constants.otpFormatters,
//     );
//   }
// }
