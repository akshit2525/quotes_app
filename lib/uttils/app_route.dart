import 'package:flutter/widgets.dart';
import 'package:quotes_app/screen/category_screen.dart';
import 'package:quotes_app/screen/quotes_edit_screen.dart';
import 'package:quotes_app/screen/quotes_screen.dart';
Map<String, WidgetBuilder> screenroutes = {

  '/' : (context) => CategoryScreen(),
  'quotes' : (context) => QuotesScreen(),
  'QuotesEdit' : (context) => Quotes_Edit_Screen(),

};