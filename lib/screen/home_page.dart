import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping/screen/collection_page.dart';
import 'package:shopping/screen/new_page.dart';
import 'package:shopping/widget/image_content.dart';
import 'package:shopping/widget/list_view.dart';

import '../list_ofitems.dart';
import 'cart_page.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
TabController controller;
List<Text> tabs_name=[ Text('Featured',textScaleFactor: 3,), Text('New',textScaleFactor: 3,), Text('Collection',textScaleFactor: 3,),];
class _HomeState extends State<Home>  with SingleTickerProviderStateMixin{
  int selectedIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=TabController(length: 3,vsync: this);
    controller.addListener(() {
      setState(() {
     selectedIndex = controller.index;
      });
      print("Selected Index: " + controller.index.toString());

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( appBar: AppBar(
        backgroundColor: Colors.grey[200],
        actions: [
          IconButton(icon: Icon(Icons.card_travel,color: Colors.black87,), onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Cart()));

          }),
          IconButton(icon: Icon(Icons.menu,color: Colors.black87,), onPressed: (){
            Navigator.pushNamed(context,  '/Drawar');
          })

        ],
    elevation: 0,bottom:TabBar(dragStartBehavior: DragStartBehavior.start,onTap: (index){
      //Navigator.of(context).popAndPushNamed('/Home');
      print(index);
      if(index==0){
        Navigator.of(context).pushNamed( '/Home',arguments: Home());
      }
      else if(index==1){
        Navigator.of(context).pushNamed( '/New_page',arguments: New_page());
        }
      else{
        Navigator.of(context).pushNamed( '/Collection_page',arguments: Collection_page());
      }


//Navigator.of(context).popAndPushNamed( '/Collection_page');


      },isScrollable: true,controller:controller,indicatorColor: Colors.transparent,labelColor: Colors.black87,unselectedLabelColor:Colors.grey ,labelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold) ,unselectedLabelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
          tabs: tabs_name),  ),
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Image_content(titel:'The Cassic' ,body:'Cassic appearance \n with a splash of color' ,
                image_path: 'asset/intro.png',height:  MediaQuery.of(context).size.height*0.20,
                padding: [const EdgeInsets.all(13.0),const EdgeInsets.only(left:8.0,top: 60),EdgeInsets.only(left: 8,top: 100)] ,
                color: [Colors.black87,Colors.grey,Colors.black87],
              textStyle: [TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),TextStyle(color:Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)],
              function: (){
                setState(() {
                  Navigator.pushNamed(context,  '/Furniture');
                });
              },),
             List_view(titelonL: 'Best sellers',titelonR: 'View all',image_list: imagesofview1,),
              List_view(titelonL: 'Hand-picks',titelonR: 'View all',image_list: imagesofview2,)
              //
            ],
          ),
        ),
      ),
    );
  }
}

