import 'package:flutter/widgets.dart';
import 'package:flutter_no_sql/app_info.dart';

class InheritedInjection extends InheritedWidget {
  final Widget child;
  final AppInfo _appInfo = AppInfo();

  InheritedInjection({Key key, this.child}) : super(key: key, child: child);

  AppInfo get appInfo => _appInfo;

  static InheritedInjection of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType(
        aspect: InheritedInjection) as InheritedInjection);
  }

  @override
  bool updateShouldNotify(InheritedInjection oldWidget) {
    return true;
  }
}
