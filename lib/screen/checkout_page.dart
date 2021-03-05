import 'package:flutter/material.dart';

import '../list_ofitems.dart';
class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,appBar:  AppBar(backgroundColor: Colors.white,elevation: 0,
      leading: IconButton(icon:Icon( Icons.arrow_back,color: Colors.black,semanticLabel: 'menue',size: 20,),onPressed: (){
        Navigator.pop(context);
      },),actions: [
        IconButton(icon:Icon( Icons.menu,color: Colors.black,semanticLabel: 'menue',size: 20,),onPressed: (){
          Navigator.popAndPushNamed(context,   '/Drawar');
        },),
      ],
    ),
      body:Container(padding: EdgeInsets.all(10),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Payment',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
SizedBox(height: 100,)
          ,Container(decoration: BoxDecoration(boxShadow: [BoxShadow(
              blurRadius: 20,spreadRadius: 0.01,offset: Offset(3,20),color: Colors.grey.withOpacity(0.30)
          )]),child: Image.network("https://newsroom.mastercard.com/mea/files/2020/07/FASTACard-1.png"))
          ,SizedBox(height: 20,)
     ,Container(child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              Text('Add new card',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w700),),
              SizedBox(width: 5,),
              Container(child: Center(child:Icon(Icons.add,color: Colors.grey,)),height: 25,width: 25,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),border: Border.all(color: Colors.grey[300])),)
              
            ],
          ),) ,
        SizedBox(height: 100,),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text('Total Amount',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w700),),

              Text('$totalCartValue\$',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
            ],
          ),)
        ,SizedBox(height: 50,),
         Center(child: FlatButton(onPressed: (){
            Navigator.popAndPushNamed(context,   '/ End' );
          },
            child: Container(height: 50,width: 300,decoration: BoxDecoration(
                color: Colors.amber[200],borderRadius: BorderRadius.all(Radius.circular(30)),boxShadow: [BoxShadow(
                blurRadius: 10,spreadRadius: 0.01,offset: Offset(3,20),color: Colors.grey.withOpacity(0.29)
            )]
            ),child: Center(child: Text('Confirm',style: TextStyle(color: Colors.black,fontSize: 20))),),
          ),),],

      ),)
    );
  }
}
