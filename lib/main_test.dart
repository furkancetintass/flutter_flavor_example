import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/flavor/app_config.dart';
import 'package:flutter_flavor_example/main_common.dart';

void main() {
  var configuredApp = const AppConfig(
    appDisplayName: "Flavor Example Test",
    appInternalId: 1,
    child: MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}
