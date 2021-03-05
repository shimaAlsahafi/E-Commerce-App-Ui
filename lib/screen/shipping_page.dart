import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class Shipping extends StatefulWidget {


  @override
  _ShippingState createState() => _ShippingState();
}
TextEditingController textEditingController= TextEditingController();
class _ShippingState extends State<Shipping> {
  @override

  @override
  Widget build(BuildContext context) {
    var item;


    return Scaffold(resizeToAvoidBottomInset: false,backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0,backgroundColor:Colors.white,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace_rounded,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        actions: [
          IconButton(icon: Icon(Icons.menu,color: Colors.black,),onPressed: (){
            Navigator.popAndPushNamed(context,  '/Drawar');
          },),

        ],
      ),
      body: Container(padding: EdgeInsets.only(left: 20,right: 20,bottom: 30),child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Shipping',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 100,),

          buildTextFormField('Full Name', MediaQuery.of(context).size.width),

          buildTextFormField('Address', MediaQuery.of(context).size.width),

         Container(height: 80,
            child: Row(
              children: [
                cityadncountry(hint: 'City',nameofdata: 'capital',height: 66,width:  MediaQuery.of(context).size.width/2.5),


                SizedBox(width: 8,),
                buildTextFormField('Zip Code', MediaQuery.of(context).size.width/2.1)
              ],
            ),
          ),
        ///
          ///
          cityadncountry(hint: 'Country',nameofdata: 'name',height: 50,width: MediaQuery.of(context).size.width),
          ///
          SizedBox(height: 10,),
          dropDown(),
            SizedBox(height: 150,),
            Center(child: FlatButton(onPressed: (){
                   Navigator.popAndPushNamed(context,  '/ Checkout');
              },
                   child: Container(height: 50,width: 300,decoration: BoxDecoration(
                    color: Colors.amber[200],borderRadius: BorderRadius.all(Radius.circular(30)),boxShadow: [BoxShadow(
                    blurRadius: 10,spreadRadius: 0.01,offset: Offset(3,20),color: Colors.grey.withOpacity(0.29)
              )]
              ),child: Center(child: Text('Conitue to Payment',style: TextStyle(color: Colors.black,fontSize: 20))),),
                 ),),


        ],
      ),),
    );
  }
  String value = "";

  Container buildTextFormField(String text,double width) =>
      Container(height: 66,width:width,child: TextFormField(
   onChanged:(text){
        value=text;
      },decoration: InputDecoration(labelText: text,hintText: text,hintStyle: TextStyle(color: Colors.black,fontSize: 15),labelStyle: TextStyle(color: Colors.black,fontSize: 16) ),));
}
class dropDown extends StatefulWidget {
  @override
  _dropDownState createState() => _dropDownState();
}


class _dropDownState extends State<dropDown> {
  @override

  List<String> Shipping = <String>['shipping method','standard shipping', 'express shipping'];
  String selectedItem = 'shipping method';
  Widget build(BuildContext context) {
    return Container(width:MediaQuery.of(context).size.width ,
        child: DropdownButton<String>(focusColor: Colors.black,dropdownColor: Colors.white,iconEnabledColor: Colors.black,iconSize: 30,
          value: selectedItem,style: TextStyle(color: Colors.black,fontSize: 15),hint: Text('shipping method ',style:TextStyle(color: Colors.black,fontSize: 15) ,), isExpanded: true,
         iconDisabledColor: Colors.black, onChanged: (String string) {
            setState(() {
              selectedItem = string;
              print(" value: ${selectedItem}");
            });
          },
          selectedItemBuilder: (BuildContext context) {

            return Shipping.map<Widget>((String item) {
              return Text(item);
            }).toList();
          },
          items: Shipping.map((String item) {

            return DropdownMenuItem<String>(

              child: Text('$item'),
              value: item,
            );
          }).toList(),));
  }
}

class cityadncountry extends StatefulWidget {

  final String nameofdata;
  final String hint;
  final double width,height;

  const cityadncountry({this.hint,this.nameofdata,this.width,this.height});
  @override
  _cityadncountryState createState() => _cityadncountryState();
}

class _cityadncountryState extends State<cityadncountry> {
  List country= List();
  String seletedItem;
  bool isLoading=false;
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchCountry();
  }
  fetchCountry() async{
    var url='https://restcountries.eu/rest/v2/all';
    var respones= await http.get(url);

    if(respones.statusCode==200){
      var itemes=convert.json.decode(respones.body);

      var namw=itemes[249]['name'];
      setState(() {
        country= itemes;
      });

      print(itemes);

      // for(int i=0;i<=249;i++) {
      //
      //   country.add( itemes[i]['name']);
      //
      //
      // }


    }

  }
  @override
  Widget build(BuildContext context) {


    return Container(height: widget.height,width: widget.width,

      child: DropdownButton( iconEnabledColor: Colors.black,isExpanded: true,hint: Text(widget.hint,style: TextStyle(color: Colors.black,fontSize: 15),),

        items: country.map((item){

          return DropdownMenuItem(value:item[ widget.nameofdata] ,child: new Text(item[ widget.nameofdata],style:TextStyle(fontSize: 15,color: Colors.black)));
        }).toList(),
        onChanged: (value){
          setState(() {
            seletedItem=value;
            print(seletedItem);
          });
        },value:seletedItem),
    );
  }
}

