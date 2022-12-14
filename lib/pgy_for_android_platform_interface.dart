import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pgy_for_android_method_channel.dart';

abstract class PgyForAndroidPlatform extends PlatformInterface {
  /// Constructs a PgyForAndroidPlatform.
  PgyForAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static PgyForAndroidPlatform _instance = MethodChannelPgyForAndroid();

  /// The default instance of [PgyForAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelPgyForAndroid].
  static PgyForAndroidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PgyForAndroidPlatform] when
  /// they register themselves.
  static set instance(PgyForAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getBaseUrl() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
