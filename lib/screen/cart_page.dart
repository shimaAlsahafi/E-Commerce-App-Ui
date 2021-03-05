



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:shopping/screen/shipping_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../list_ofitems.dart';



class Cart extends StatefulWidget {










  @override
  _CartState createState() => _CartState();
}

void calculateTotal() {
  totalCartValue = 0;
  cart.forEach((f) {
    totalCartValue += f.price * f.amount;
  });
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

setState(() {


  calculateTotal();



});
  }
  @override

  Widget build(BuildContext context) {
    print("sum in top cart ${ totalCartValue}");
    return Scaffold(appBar: AppBar(backgroundColor: Colors.grey[100],elevation: 0,actions: [
      IconButton(icon: Icon(Icons.close,color: Colors.black,),onPressed: (){Navigator.pop(context);},)
    ],),backgroundColor: Colors.grey[100],body: Container(padding: EdgeInsets.symmetric(vertical: 50,horizontal: 15),

        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min      ,children: [
            Text('My Bag',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),),
        SizedBox(height: 30,),
           //CartM(titel: titel,price: price,path: path)
            cart_item(list: cart),
            //////////////////////////\

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount',style: TextStyle(fontSize: 25.0,color: Colors.grey)),
                  Text('${ totalCartValue }\$',style: TextStyle(fontSize: 25.0,color: Colors.black)),
                  

                ],
              ),
            ),
            SizedBox(height: 100,),
            Center(
              child: FlatButton(onPressed: (){
                setState(() {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => new Shipping()));
                });
              },child: Container(height: 50,width: 300,decoration: BoxDecoration(
                color: Colors.amber[200],borderRadius: BorderRadius.all(Radius.circular(30)),boxShadow: [BoxShadow(
                blurRadius: 10,spreadRadius: 0.01,offset: Offset(3,20),color: Colors.grey.withOpacity(0.29)
              )]
              ),child: Center(child: Text('Check out',style: TextStyle(color: Colors.black,fontSize: 20))),),),
            ),
            SizedBox(height: 30,),
            Center(
              child: FlatButton(onPressed: (){},child: Container(height: 50,width: 300,child: Center(child: Text('Continue shopping',style: TextStyle(color: Colors.black,fontSize: 20))),),),
            )

          ],

      ),
    ),);
  }
}

class cart_item extends StatefulWidget {
  final List list;


  //final String titel,path,price;
   cart_item({this.list});

  @override
  _cart_itemState createState() => _cart_itemState();
}

class _cart_itemState extends State<cart_item> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  Widget build(BuildContext context) {

    return  Expanded(

        child: Container(

              child: ListView.separated(separatorBuilder: (context,index){
                return  Divider(color: Colors.black,);
              },itemCount: widget.list.length,itemBuilder: (context,index){

                var item = widget.list[index];


                return Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  child:
                  Container(child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 90,width: 90,color: Colors.white,child:Image(image: AssetImage(item.image),),),
                        SizedBox(width: 10,),
                        Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Text(item.titel,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text( '${item.price}\$',style: TextStyle(color: Colors.black,fontSize: 15),),
                          SizedBox(height: 30,),
                          Container(child: Row(children: [
                            SizedBox(width: 180,),
                            Container(width: 40,height: 40,decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.grey[300])),child: Center(child: IconButton(icon: Icon(Icons.add,color:Colors.grey[600]),onPressed: (){
                              setState(() {
                                item.amount= item.amount+1;
                                print( 'item.amount:${item.amount} ');


                               // sum[index]= (item.price * (item.amount));
                                sum.add(item.price);
                                calculateTotal();


                              });
                            },)),),
                            SizedBox(width: 5,),
                            Text('${item.amount}',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                            SizedBox(width: 5,),
                            Container(width: 40,height: 40,decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.grey[300])),child: IconButton(icon: Icon(Icons.remove,color:Colors.grey[600] ,),onPressed: (){
                              setState(() {
                                if(item.amount!=1){
                                  widget.list.remove(item);

                                }
                                else{item.amount=item.amount-=1;
                              //  sum= sum- item.price;

                                print('dcres sum $sum');}

                              });
                            },),),
                          ],),)
                         ,
                        ],),)

                        ,
                      ]),),
                  secondaryActions: <Widget>[

                    IconSlideAction(
                        caption: 'Delete',
                        color: Colors.white,
                        icon: Icons.delete,foregroundColor: Colors.grey,
                        onTap: () {
                          setState(() {
                            widget.list.removeAt(index);

                          });
                        },)
                  ],       );
              }),
               ),




    );
  }


}
