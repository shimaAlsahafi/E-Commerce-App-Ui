import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/model/furnitrue_cardConetnt.dart';
import 'package:shopping/screen/item_page.dart';

import 'gridview.dart';
class List_view extends StatelessWidget {
  final String titelonL;
  final String titelonR;
 List<furnitrue_cardConetnt> image_list;

  List_view({Key key, this.titelonL, this.titelonR,this.image_list}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(margin: EdgeInsets.only(top: 50),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text(titelonL,textScaleFactor: 1.0,style:TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            InkWell(onTap:(){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => new gridview(list: image_list,)));

            },child: Text(titelonR,textScaleFactor: 1.0,style:TextStyle(color: Colors.yellow[700],fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)),

          ],),
      ),
       Container(height: 150,width: MediaQuery.of(context).size.width,child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: image_list.length,itemBuilder: (context,index){
          return InkWell(onTap: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Item_page(image: image_list[index].image_path,titel:image_list[index].titel,price:image_list[index].prices,)));

          },
            child: Container(margin: EdgeInsets.only(left: 8),decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),

            ),child: Image(image: AssetImage(image_list[index].image_path)),height: 150,width: 130,),
          );
        },),
        ),

    ],) ;
  }
}
