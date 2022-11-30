import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  const AppConfig({
    super.key,
    required this.appDisplayName,
    required this.appInternalId,
    required Widget child,
  }) : super(child: child);

  final String appDisplayName;
  final int appInternalId;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
