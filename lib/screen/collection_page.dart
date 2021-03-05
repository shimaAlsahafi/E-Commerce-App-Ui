
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widget/image_content.dart';

import 'cart_page.dart';
class Collection_page extends StatefulWidget {
  @override
  _Collection_pageState createState() => _Collection_pageState();
}

class _Collection_pageState extends State<Collection_page> {
  @override
  Widget build(BuildContext context) {
    List<Color> colors= [Colors.white,Colors.white,Colors.white];
    List<EdgeInsets>padding=[ const EdgeInsets.only(left:30,top: 210),const EdgeInsets.only(top: 270,left: 30), EdgeInsets.only(left: 320,top: 270)];
    List <TextStyle> textStyle= [TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)];
    var height= MediaQuery.of(context).size.height*0.35;
    Function onpress =(){
      setState(() {
        Navigator.popAndPushNamed(context, '');
      });
    };

    List<Image_content>tt=[  Image_content(titel:'UTÅKER' ,body: 'Stackable bed',image_path:'asset/backgroundofcollection1.png',height:height,padding:padding,color:colors,textStyle: textStyle,function: onpress,),
      Image_content(titel:'RAMSTA' ,body: 'Day-bed frame with\n slatted bed base',image_path:'asset/backgroundofcollection2.png',height: height,padding: padding,color: colors,textStyle: textStyle,function: onpress,),
      Image_content(titel:'Zen Living' ,body: 'Antique Stain',image_path:'asset/backgroundofcollection3.png',height:  height,padding: padding,color: colors,textStyle: textStyle,function: onpress,),
      Image_content(titel:'Modern Dining' ,body: 'Table and 4 chairs \n Antique Stain ',image_path:'asset/backgroundofcollection4.png',height:height,padding:padding,color:colors,textStyle: textStyle,function: onpress,),];

    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(elevation: 0,backgroundColor: Colors.white,leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black87,size: 30,),onPressed: (){
  setState(() {
    Navigator.popAndPushNamed(context, '/Home');
  });
    }),
      actions: [
        IconButton(icon: Icon(Icons.card_travel,color: Colors.black87,), onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new Cart()));

        }),
        IconButton(icon: Icon(Icons.menu,color: Colors.black87,), onPressed: (){
          Navigator.pushNamed(context,  '/Drawar');
        })

      ],),body:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Collection',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),textScaleFactor: 3),
Expanded(
  child:   ListView.builder(itemBuilder:(context,index){
    return tt[index];
  } ,itemCount:tt.length ),
)
          ],
        ),
    ),);
  }
}
