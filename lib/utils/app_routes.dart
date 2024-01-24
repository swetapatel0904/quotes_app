import 'package:flutter/material.dart';
import 'package:quotes_app/screen/home/home_screen.dart';
import 'package:quotes_app/screen/quotes/quotes_screen.dart';
import 'package:quotes_app/screen/splash_screen.dart';
Map<String,WidgetBuilder> app_route= {
  "/": (context) => const SplashScreen(),
  "home":(context) => HomeScreen(),
  "quote":(context) => QuotesScreen(),
};