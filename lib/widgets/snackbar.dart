
import 'package:fluttertoast/fluttertoast.dart';

import '../utils/app_color.dart';
message(String msg){
 return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.green,
      textColor: AppColors.white,
      fontSize: 16.0
  );
}