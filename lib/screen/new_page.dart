import 'package:flutter/material.dart';
import 'package:shopping/list_ofitems.dart';
import 'package:shopping/widget/gridview.dart';
class New_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        backgroundColor: Colors.grey[200],leading: IconButton(icon: Icon(Icons.arrow_back,size: 30,color: Colors.black87,), onPressed: (){

        Navigator.pop(context);

    }),
        actions: [
          IconButton(icon: Icon(Icons.card_travel,color: Colors.black87,), onPressed: null),

        ],elevation: 0,),backgroundColor: Colors.grey[200],
    body: Container(child: gridview(list:card_ofnewitem),),);
  }
}
