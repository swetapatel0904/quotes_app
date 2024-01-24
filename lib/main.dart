import 'package:flutter/material.dart';
import 'package:quotes_app/utils/app_routes.dart';
import 'package:quotes_app/utils/global.dart';
void main()
{
  convertMapToModel();
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'font1'
      ),
      debugShowCheckedModeBanner: false,
      routes: app_route,
    ),
  );
}