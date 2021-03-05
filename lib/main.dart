import 'package:flutter/material.dart';
import 'package:shopping/screen/blog_page.dart';
import 'package:shopping/screen/checkout_page.dart';
import 'package:shopping/screen/collection_page.dart';
import 'package:shopping/screen/drawar.dart';
import 'package:shopping/screen/end_page.dart';
import 'package:shopping/screen/furniture_page.dart';
import 'package:shopping/screen/gallay_page.dart';
import 'package:shopping/screen/home_page.dart';
import 'package:shopping/screen/item_page.dart';
import 'package:shopping/screen/new_page.dart';
import 'package:shopping/screen/shipping_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
   initialRoute: '/Home',
      routes: <String, WidgetBuilder> {
        '/Home': (BuildContext context) => Home(),
        '/New_page': (BuildContext context) => new New_page(),
        '/Collection_page' : (BuildContext context) => new Collection_page(),
        '/Furniture' : (BuildContext context) => new Furniture_page(),
        '/Item' : (BuildContext context) => new Item_page(),
        '/Drawar' : (BuildContext context) => new Drawar(),
        '/Galary' : (BuildContext context) => new Galary(),
        '/Blog' : (BuildContext context) => new Blog(),
        '/Shipping' : (BuildContext context) => new Shipping(),
        '/ Checkout' : (BuildContext context) => new  Checkout(),
        '/ End' : (BuildContext context) => new  End_page()




      },

    );
  }
}
