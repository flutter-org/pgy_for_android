import 'package:flutter_test/flutter_test.dart';
import 'package:pgy_for_android/pgy_for_android.dart';
import 'package:pgy_for_android/pgy_for_android_platform_interface.dart';
import 'package:pgy_for_android/pgy_for_android_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPgyForAndroidPlatform with MockPlatformInterfaceMixin implements PgyForAndroidPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getBaseUrl() => Future.value('https://www.pgyer.com');
}

void main() {
  final PgyForAndroidPlatform initialPlatform = PgyForAndroidPlatform.instance;

  test('$MethodChannelPgyForAndroid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPgyForAndroid>());
  });

  test('getPlatformVersion', () async {
    PgyForAndroid pgyForAndroidPlugin = PgyForAndroid();
    MockPgyForAndroidPlatform fakePlatform = MockPgyForAndroidPlatform();
    PgyForAndroidPlatform.instance = fakePlatform;

    expect(await pgyForAndroidPlugin.getPlatformVersion(), '42');
  });

  test('getBaseUrl', () async {
    PgyForAndroid pgyForAndroidPlugin = PgyForAndroid();
    MockPgyForAndroidPlatform fakePlatform = MockPgyForAndroidPlatform();
    PgyForAndroidPlatform.instance = fakePlatform;

    expect(await pgyForAndroidPlugin.getPlatformVersion(), 'https://www.pgyer.com');
  });
}
