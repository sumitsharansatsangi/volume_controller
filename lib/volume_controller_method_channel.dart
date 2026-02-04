import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'volume_controller_platform_interface.dart';

/// An implementation of [VolumeControllerPlatform] that uses method channels.
class MethodChannelVolumeController extends VolumeControllerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('volume_controller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
