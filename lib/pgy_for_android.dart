import 'pgy_for_android_platform_interface.dart';

class PgyForAndroid {
  Future<String?> getPlatformVersion() {
    return PgyForAndroidPlatform.instance.getPlatformVersion();
  }

  Future<String?> getBaseUrl() {
    return PgyForAndroidPlatform.instance.getBaseUrl();
  }
}
