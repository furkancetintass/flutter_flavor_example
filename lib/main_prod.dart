import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/flavor/app_config.dart';
import 'package:flutter_flavor_example/main_common.dart';

void main() {
  var configuredApp = const AppConfig(
    appDisplayName: "Flavor Example Prod",
    appInternalId: 2,
    child: MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}
