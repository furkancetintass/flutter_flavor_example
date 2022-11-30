import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/flavor/app_config.dart';
import 'package:flutter_flavor_example/view/home_page.dart';

void mainCommon() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config.appDisplayName);
  }

  Widget _buildApp(String appName) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primaryColor: const Color(0xFF43a047),
      ),
      home: const HomePage(),
    );
  }
}
