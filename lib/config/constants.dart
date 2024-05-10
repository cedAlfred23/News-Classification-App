class BConstants {
  //Strings
  static const pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static const requestError = "Error occured please try again...";
  static const noInternet = "No internet connection. Please connect...";
  static const connectionTimeOut =
      "Sorry, it seems your internet connection is slow, Please retry";
  static const unauthorizedString = "Unauthorized call";

  //int
  static const double horizontalPadding = 10;
  static const int animationDuration = 300;
}