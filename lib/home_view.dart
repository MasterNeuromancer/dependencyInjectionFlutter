import 'package:flutter/material.dart';
import 'package:flutter_no_sql/app_info.dart';

class MyHomeView extends StatelessWidget {

  AppInfo appinfo;

  MyHomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var appInfo = InheritedInjection.of(context).appInfo;
    return Scaffold(
      body: Center(
        child: Text(appInfo.welcomeMessage),
      ),
    );
  }
}
N