import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../widget/image_content.dart';
class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[100],appBar: AppBar(backgroundColor: Colors.grey[100],elevation: 0,actions: [
      IconButton(icon: Icon(Icons.menu,color: Colors.black,), onPressed: null),
      IconButton(icon:  Icon(Icons.shopping_bag,color: Colors.black), onPressed: null)
    ],),body:Container(padding: EdgeInsets.all(30),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text('Blog',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),),
        SizedBox(height: 30,),
       Container(height: 400,width: 400,child:  ListView(scrollDirection: Axis.horizontal,children: [
         heder('asset/blog.jpg'),
         heder('asset/blog2.jpg'),
         heder('asset/blog3.jpg'),

       ],),),
        SizedBox(height: 25,),
        Container(height: 40,width: 400,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Text('Simple Lifestyle',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          Text('Veiw all',style: TextStyle(color: Colors.amberAccent,fontSize: 20,fontWeight: FontWeight.bold),),
        ],),),



        Container(height: 200,width: 400,child:  ListView(scrollDirection: Axis.horizontal,children: [
          bottom('asset/blog4.jpg','Slow your\n  home'),
          bottom('asset/blog5.jpg','The art of\n Simple'),
          bottom('asset/blog6.jpg','Minimalist\n Style Decor'),


        ],),),



      ],),
    ),);
  }

  Expanded bottom(String path,String discription) {
    return Expanded(
      child: Container(margin: EdgeInsets.only(left: 5,right: 5),height: 200,width: 200,decoration: BoxDecoration(boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 6)],image: DecorationImage(image: AssetImage(path),fit: BoxFit.cover),borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Stack(children: [
              Positioned(bottom: 12,left: 10,child: Text(discription,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15))),
            ],)),
    );
  }

  Container heder(String path) {
    return Container(margin: EdgeInsets.only(left: 5,right: 5),height: 400,width: 340,decoration: BoxDecoration(boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 6)],image: DecorationImage(image: AssetImage(path),fit: BoxFit.cover),borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Stack(children: [
            Positioned(bottom: 90,left: 10,child: Text('Home Decor',style: TextStyle(color: Colors.white,fontSize: 15))),
            Positioned(bottom: 12,left: 10,child: Text('Minimalist\n Style Decor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
            Positioned(bottom: 12,left: 300,child: IconButton(icon: Icon(Icons.arrow_forward,color: Colors.white,), onPressed: null)),
          ],));
  }
}
