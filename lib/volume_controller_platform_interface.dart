import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'volume_controller_method_channel.dart';

abstract class VolumeControllerPlatform extends PlatformInterface {
  /// Constructs a VolumeControllerPlatform.
  VolumeControllerPlatform() : super(token: _token);

  static final Object _token = Object();

  static VolumeControllerPlatform _instance = MethodChannelVolumeController();

  /// The default instance of [VolumeControllerPlatform] to use.
  ///
  /// Defaults to [MethodChannelVolumeController].
  static VolumeControllerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VolumeControllerPlatform] when
  /// they register themselves.
  static set instance(VolumeControllerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
