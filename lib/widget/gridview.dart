

import 'package:flutter/material.dart';
import 'package:shopping/model/cart_model.dart';
import 'package:shopping/model/furnitrue_cardConetnt.dart';
import 'package:shopping/screen/cart_page.dart';
import 'package:shopping/screen/item_page.dart';

import '../list_ofitems.dart';

class gridview extends StatelessWidget {
  final List list;


  const gridview({Key key, this.list}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    int sum = 0;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(scrollDirection: Axis.vertical, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio:   MediaQuery.of(context).size.height / 1500,
            crossAxisCount:2,crossAxisSpacing: 10 ,mainAxisSpacing:10),itemCount: list.length, itemBuilder: (context,index){
          return InkWell(onTap: (){

            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Item_page(image: list[index].image_path,titel: list[index].titel,price:list[index].prices ,amount:0,)));

          },
            child: Container(decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(
                color: Colors.grey[300],blurRadius: 0.99
            )],borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(list[index].image_path),height: 180,width: 180,),
                    Text(list[index].titel,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 25),textScaleFactor: 1,),
                    Text(list[index].discription,style: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold,fontSize: 15),textScaleFactor: 1,),
                    Padding(
                      padding: const EdgeInsets.only(left:13.0,right: 4),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${list[index].prices}\$',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 23),textScaleFactor: 1,),
                          IconButton(icon: Icon(Icons.shopping_cart,size: 30,color: Colors.grey[300],), onPressed: (){
                            Item_page selecteditem= Item_page(titel: list[index].titel,image: list[index].image_path,price: list[index].prices);
                              cart.add(selecteditem);//update
                              sum = 0;
                              cart.forEach((item){
                                sum = sum + item.price;
                              });

                            Navigator.push(context,new MaterialPageRoute(builder: (context) => new Cart( )));
                          })

                        ],
                      ),
                    )
                  ]),
            ),
          );
        }),
      ),
    );
  }
}