class Validators {
  static String? userNameValidator(String value, String type) {
    String namePtn = r'(^[a-zA-Z0-9]{6,15}$)';
    RegExp regExp = RegExp(namePtn);
    if (value.isEmpty) {
      return "$type is required";
    } else if (!regExp.hasMatch(value)) {
      return "$type is invalid";
    }

    return null;
  }

  static String? passwordValidator(String value, String type) {
    String passPtn =
        r'^.*(?=.{8,})((?=.*[!@#$%^&*()\-_=+{};:,<.>]){1})(?=.*\d)((?=.*[a-z]){1})((?=.*[A-Z]){1}).*$';
    RegExp regExp = RegExp(passPtn);
    if (value.isEmpty) {
      return "$type is required";
    }  else if (!regExp.hasMatch(value)) {
      return "Invalid - please follow this format UserName@00";
    }
    return null;
  }

  static String? contactNumberValidator(String value, String type) {
    int v = value.length;
    if (value.isEmpty) {
      return "$type can't be null";
    } else if (v > 10) {
      return "$type can't be more than 10 ";
    } else if (v < 10) {
      return "$type can't be less than 10";
    }
    return null;
  }

  static String? emailAddressValidator(String value, String type) {
    String emailptn =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(emailptn);
    if (value.isEmpty) {
      return "$type can't be null";
    } else if (!regExp.hasMatch(value)) {
      return "please follow the proper format";
    }
    return null;
  }
}