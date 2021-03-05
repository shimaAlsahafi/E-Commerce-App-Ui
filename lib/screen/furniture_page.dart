import 'package:flutter/material.dart';
import 'package:shopping/screen/bed_page.dart';
import 'package:shopping/screen/chairs_page.dart';
import 'package:shopping/screen/sofa_page.dart';
import 'package:shopping/screen/table_page.dart';

import 'cart_page.dart';
class Furniture_page extends StatefulWidget {
  @override
  _Furniture_pageState createState() => _Furniture_pageState();
}
TabController controller;
List<Text> tabs_name=[Text('Chairs',textScaleFactor: 3,), Text('Tables',textScaleFactor: 3,), Text('Sofa',textScaleFactor: 3,),Text('Bed',textScaleFactor: 3,)];
class _Furniture_pageState extends State<Furniture_page> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= TabController(length:4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.grey[100],
      appBar: AppBar(elevation: 0,leading: IconButton(icon: Icon(Icons.arrow_back,color:Colors.black87,),iconSize: 30,onPressed: (){
        Navigator.pop(context);
      },),backgroundColor: Colors.grey[100],actions: [
        IconButton(icon: Icon(Icons.card_travel,color: Colors.black87,), onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new Cart()));

        }),
        IconButton(icon: Icon(Icons.menu,color: Colors.black87,), onPressed: null,)
      ],bottom: TabBar(onTap: (index){


      },isScrollable: true,controller:controller,indicatorColor: Colors.transparent,labelColor: Colors.black87,unselectedLabelColor:Colors.grey ,labelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold) ,unselectedLabelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
          tabs: tabs_name),  ),
    body: TabBarView(controller: controller,children: [
      Chairs(),Tables(),Sofa(),Bedes()

    ]),);
  }
}
