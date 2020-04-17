import 'package:flutter/services.dart';

class PlateformChannelHelper {
  static const platform =
      const MethodChannel("fr.mds.nativegeoloc/user_position");
  static Future getNativeUserPosition() async {
    //GET MESSAGE FROM NATIVE CODE
    String message;
    try {
      message = await platform.invokeMethod("userPosition");
    } on PlatformException catch (e) {
      print(e.toString());
      return "";
    }
    return message;
  }
}
