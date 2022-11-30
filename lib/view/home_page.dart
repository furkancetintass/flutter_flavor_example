import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/flavor/app_config.dart';
import 'package:flutter_flavor_example/resources/display_strings.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(config.appDisplayName),
        // title: const Text("Flavors Example"),
      ),
      body: _buildBody(config.appDisplayName),
    );
  }

  Widget _buildBody(String appName) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Text(appName),
            Text(Constants.date + getDateForDisplay()),
            const Text(Constants.appDescription),
            const FlutterLogo(
              size: 100,
            ),
          ],
        ));
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
}
