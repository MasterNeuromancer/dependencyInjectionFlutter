import 'package:flutter/material.dart';
import 'package:flutter_no_sql/home_view.dart';
import 'package:flutter_no_sql/inherited_injection.dart';
import 'package:flutter_no_sql/locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InheritedInjection(
      child: MaterialApp(
        title: 'Dependency Injection',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(body: MyHomeView()),
      ),
    );
  }
}
