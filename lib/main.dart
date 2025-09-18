import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';

import 'app.dart';

void main() {
  runApp(
    DevicePreview(
      // enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}
