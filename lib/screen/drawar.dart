

import 'dart:async';

import 'package:flutter/material.dart';

import 'blog_page.dart';
import 'cart_page.dart';
class Drawar extends StatefulWidget {
  @override
  _DrawarState createState() => _DrawarState();
}

class _DrawarState extends State<Drawar> {
List <bool>  isSelected=[false,false,false,false,false,false];



  @override

  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.yellow[50],
      body: Container(width: MediaQuery.of(context).size.width,
        child:  Row(

        children: [
             Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),decoration: BoxDecoration(),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  Container(child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                      SizedBox(width: 270,),IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => new Cart()));

                      }),IconButton(icon: Icon(Icons.close,color: Colors.black,size: 20,), onPressed: (){
                        Navigator.pop(context);
                      })
                    ],)),

                      Container(child: Row(children: [

                        CircleAvatar(backgroundImage: AssetImage('asset/proflie.png'),radius: 30,)
                        ,Container(padding:EdgeInsets.only(left: 15),child: Column(children: [
                          Text('Jason Moosa',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),), Text('jasoon@mail.com',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15,),),

                        ],),)       ,
                         ],),),
                      SizedBox(height: 30,),
                      //,,,'Blog'
                      buildText('Explore',0),  buildText('Shop',2),  buildText('Collection',3),
                      buildText('Blog',1),  buildText('Gallery',4), buildText('About',5)

                      , ],

                  )),
            ]  ),
      ),
    );
  }

  GestureDetector buildText(String text,int index) {

Color color;
TextDecoration textDecoration;

    return  GestureDetector(onTap: () {

      setState(() {
        for(int i=0;i<isSelected.length;i++){

          if(index==i){
            isSelected[i]=true;
            if(   index==1){
              Timer(Duration(microseconds: 20), (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Blog()));
              });
            }

          }
          else{
            isSelected[i]=false;
          }
        }





      });

    },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Text(text, style: TextStyle(
            color:isSelected[index]==true?Colors.amberAccent:Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            decoration: isSelected[index]==true?TextDecoration.underline:null,
            decorationColor: Colors.amberAccent),),
      ),
    );
  }



}
