import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping/model/cart_model.dart';
import 'package:shopping/model/furnitrue_cardConetnt.dart';

import '../list_ofitems.dart';
import 'cart_page.dart';

class Item_page extends StatefulWidget {

 final String titel;
  final String image;
 final int id;
  final int price;
 int amount;

   Item_page({Key key, this.titel, this.image,this.price,this.amount=1,this.id}) : super(key: key);


  @override
  _Item_pageState createState() => _Item_pageState();
}

class _Item_pageState extends State<Item_page> {
  @override


  @override
  List<bool> isSelected=[false,false,false];
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(backgroundColor: Colors.white,elevation: 0,leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black87,size: 30,),onPressed: (){
      Navigator.pop(context);},)
      ,actions: [
      IconButton(icon: Icon(Icons.card_travel,color: Colors.black87,), onPressed: (){
        Navigator.push(context, new MaterialPageRoute(builder: (context) => new Cart()));

      }),
    IconButton(icon: Icon(Icons.menu,color: Colors.black87,), onPressed: null,)
      ],),body: Container(padding: EdgeInsets.only(left:10,right: 4),child:
        Column(

          children: [
            Container(margin: EdgeInsets.only(right: 150),child: Text(widget.titel,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w800),textScaleFactor: 2.5,)),
        Image(image: AssetImage(widget.image),width: MediaQuery.of(context).size.width*0.8,height: MediaQuery.of(context).size.height*0.4),
          Container(margin: EdgeInsets.only(right: 150),child: Text('A Modern Traditon',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w800,fontSize: 25),)),
          SizedBox(height: 10,),
            Text('Kew chair is a conternporary shaker chair based\n on the virtuse of tradition craft.it carrtied on the\n simplicity and honesty of the archypical chair',
            style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.w800,fontSize: 15),),
            SizedBox(height: 20,),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
// choice color
             Row(children: [

               FlatButton(onPressed: (){
                 setState(() {
                   if(isSelected[0]==false){ isSelected[0]=true;isSelected[1]=false;isSelected[2]=false;}
                   else{isSelected[0]=false;isSelected[1]=false;isSelected[2]=false;}
                 });
               }, child:isSelected[0]?Container(child: Stack(
                 alignment: Alignment.center,
                 children: [
                   Container(height: 52,width: 52,decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.all(Radius.circular(50))),)
                   , Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.all(Radius.circular(50)))
                   )],),):Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.black87,borderRadius: BorderRadius.all(Radius.circular(50))),)
               ),
              // SizedBox(width: 5,),

               FlatButton(onPressed: (){
                 setState(() {
                   if(isSelected[1]==false){ isSelected[1]=true;isSelected[0]=false;isSelected[2]=false;}
                   else{isSelected[1]=false;}

                 });
               }, child:isSelected[1]?Container(child: Stack(
                 alignment: Alignment.center,
                 children: [
                   Container(height: 52,width: 52,decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.all(Radius.circular(50))),)
                   , Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.all(Radius.circular(50)))
                   )],),):Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.all(Radius.circular(50))),)
               ),
              // SizedBox(width: 1,),

               FlatButton(onPressed: (){
                 setState(() {
                   if(isSelected[2]==false){ isSelected[1]=false;isSelected[0]=false;isSelected[2]=true;}
                   else{isSelected[2]=false;}
                 });
               }, child:isSelected[2]?Container(child: Stack(
                 alignment: Alignment.center,
                 children: [
                   Container(height: 52,width: 52,decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.all(Radius.circular(50))),)
                   , Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.brown[100],borderRadius: BorderRadius.all(Radius.circular(50)))
                   )],),):Container(height: 40,width: 40,decoration: BoxDecoration(color: Colors.brown[100],borderRadius: BorderRadius.all(Radius.circular(50))),)
               )
 ],)
              //shiooing cart
             , Container(padding: EdgeInsets.only(right: 10),child: Stack(
                alignment: Alignment.center,
                children: [
                Container(height: 50,width: 50,decoration: BoxDecoration(color: Colors.yellow[500],borderRadius: BorderRadius.all(Radius.circular(50))),)
              , IconButton(icon: Icon(Icons.shopping_cart,size: 30),color: Colors.white,onPressed: (){

                    setState(() {


// ignore: unrelated_


var item=Item_page(titel: widget.titel,image: widget.image,price: widget.price,amount: widget.amount,);
addCardManager(widget.image,widget.titel, widget.price, widget.amount);
sum.add(item.price);

Navigator.push(context, new MaterialPageRoute(builder: (context) => new Cart()));
       });

                  },)
              ],),)
             ,
            ],

          ),)
,SizedBox(height: 30,)
,Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('You may also like',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w800,fontSize:25),),
                Text('View all',style: TextStyle(color: Colors.black87,fontSize: 20),),


              ],
            ),),
Expanded(child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: listof_Itemelikes.length,itemBuilder: (context,index){
  return Container(margin: EdgeInsets.all(12),decoration: BoxDecoration(  border: Border.all(
    color: Colors.white,
    width: 8,
  ),boxShadow: [BoxShadow(color: Colors.grey[300],blurRadius: 2.5)],color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20))),child: Image(image: AssetImage(listof_Itemelikes[index])),);
}),)
        ],),),);
  }
}
