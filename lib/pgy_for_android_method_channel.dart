import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pgy_for_android_platform_interface.dart';

/// An implementation of [PgyForAndroidPlatform] that uses method channels.
class MethodChannelPgyForAndroid extends PgyForAndroidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pgy_for_android');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getBaseUrl() async {
    final baseUrl = await methodChannel.invokeMethod<String>('getBaseUrl');
    return baseUrl;
  }
}
