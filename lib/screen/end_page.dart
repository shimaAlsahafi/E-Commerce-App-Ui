import 'package:flutter/material.dart';
class End_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,actions: [
        IconButton(icon: Icon(Icons.menu,color: Colors.black87,), onPressed: (){
          Navigator.pushNamed(context,  '/Drawar');
        })
      ],),
  body: Column(
    children: [
      SizedBox(height: 200,),
      Center(child: Icon(Icons.ac_unit_sharp,size: 50,color: Colors.black,)),
      SizedBox(height: 30,),
      Center(child: Text('Congrat!',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),),
      SizedBox(height: 30,),
      Center(child: Text('Thank you for purchasing. Your order\n will be shipped in 2-4 working days.',style: TextStyle(color: Colors.grey,fontSize: 15),),),
      SizedBox(height: 250,),
      Center(child: FlatButton(onPressed: (){
        Navigator.popAndPushNamed(context,  '/Home' );
      },
        child: Container(height: 50,width: 300,decoration: BoxDecoration(
            color: Colors.amber[200],borderRadius: BorderRadius.all(Radius.circular(30)),boxShadow: [BoxShadow(
            blurRadius: 10,spreadRadius: 0.01,offset: Offset(3,20),color: Colors.grey.withOpacity(0.29)
        )]
        ),child: Center(child: Text('Continue Shopping',style: TextStyle(color: Colors.black,fontSize: 20))),),
      ),)
    ],
  ),  );
  }
}
