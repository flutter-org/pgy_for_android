import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pgy_for_android/pgy_for_android_method_channel.dart';

void main() {
  MethodChannelPgyForAndroid platform = MethodChannelPgyForAndroid();
  const MethodChannel channel = MethodChannel('pgy_for_android');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
