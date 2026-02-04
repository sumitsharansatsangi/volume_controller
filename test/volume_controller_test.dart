import 'package:flutter_test/flutter_test.dart';
// import 'package:volume_controller/volume_controller.dart';
import 'package:volume_controller/volume_controller_platform_interface.dart';
import 'package:volume_controller/volume_controller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVolumeControllerPlatform
    with MockPlatformInterfaceMixin
    implements VolumeControllerPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VolumeControllerPlatform initialPlatform =
      VolumeControllerPlatform.instance;

  test('$MethodChannelVolumeController is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVolumeController>());
  });
}
