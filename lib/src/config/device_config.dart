import 'package:flutter/material.dart';

enum DeviceScreenType {
  mobile,
  tablet,
  desktop,
}

class DeviceConfig {
  static DeviceScreenType deviceScreenType = DeviceScreenType.mobile;

  void init(BoxConstraints constraints) {
    configureDeviceType(constraints);
  }

  static configureDeviceType(BoxConstraints constraints) {
    deviceScreenType = getDeviceType(constraints);
  }

  static DeviceScreenType getDeviceType(BoxConstraints constraints) {
    if (constraints.maxWidth < 600) {
      return DeviceScreenType.mobile;
    } else if (constraints.maxWidth < 800) {
      return DeviceScreenType.tablet;
    } else {
      return DeviceScreenType.desktop;
    }
  }
}
