import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginAppDemo {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_app_demo/battery');

  static Future<int> getBattery() async {
    final int battery = await _channel.invokeMethod('getBattery');
    return battery;
  }
}
