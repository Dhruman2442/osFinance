import 'package:flutter/material.dart';
import 'package:loginuicolors/home_page/login.dart';
import 'package:loginuicolors/home_page/register.dart';
import 'package:loginuicolors/reports/reports_types.dart';
import 'package:loginuicolors/settings/settings_types.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'Settings': (context) => SettingTypes(),
      'Report': (context) => ReportTypes(),
    },
  ));
}
