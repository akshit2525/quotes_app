import 'package:flutter/material.dart';
import 'package:quotes_app/uttils/app_route.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: screenroutes,

    )
  );
}