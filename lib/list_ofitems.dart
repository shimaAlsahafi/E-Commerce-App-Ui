import 'package:shopping/screen/item_page.dart';

import 'model/furnitrue_cardConetnt.dart';

int totalCartValue = 0;

List<furnitrue_cardConetnt> imagesofview1=[  furnitrue_cardConetnt(id: 1,image_path: 'asset/sofa.png',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 480 ),
 furnitrue_cardConetnt(id: 2,image_path: 'asset/chair1.png',titel:'Amos Chair',discription: 'A modern take on \n tradtion',prices: 220 ),
  furnitrue_cardConetnt(id: 3,image_path: 'asset/table.png',titel:'Amos Table',discription: 'A modern take on \n tradtion',prices: 180 ),
  furnitrue_cardConetnt(id: 4,image_path: 'asset/bed6.png',titel:'Amos Bed',discription: 'A modern take on \n tradtion',prices: 3450 ),
  furnitrue_cardConetnt(id: 5,image_path: 'asset/new_sofa3.png.jpeg',titel:'Tirnar Sofa',discription: 'A modern take on \n tradtion',prices: 990 ),


];

List<furnitrue_cardConetnt> imagesofview2=[  furnitrue_cardConetnt(id: 6,image_path: 'asset/sofa3.png',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 480 ),
  furnitrue_cardConetnt(id: 7,image_path: 'asset/chair2.png',titel:'Amos Chair',discription: 'A modern take on \n tradtion',prices: 220 ),

  furnitrue_cardConetnt(id: 8,image_path: 'asset/table2.png',titel:'Amos Table',discription: 'A modern take on \n tradtion',prices: 180 ),
  furnitrue_cardConetnt(id: 9,image_path: 'asset/bed4.png',titel:'Amos Bed',discription: 'A modern take on \n tradtion',prices: 3450 ),
  furnitrue_cardConetnt(id: 10,image_path: 'asset/chair4.png',titel:'Amos Chair',discription: 'A modern take on \n tradtion',prices: 220 ),

  furnitrue_cardConetnt(id: 11,image_path: 'asset/sofa5.png',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 580),


];
List<furnitrue_cardConetnt> card_ofsofa=[
  furnitrue_cardConetnt(id: 1,image_path: 'asset/sofa.png',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 480 ),
  furnitrue_cardConetnt(id: 12,image_path: 'asset/sofa2.png',titel:'Kew Sofa',discription: 'A modern take on \n tradtion',prices: 1680 ),
  furnitrue_cardConetnt(id: 13,image_path: 'asset/sofa3.png',titel:'Buro Sofa',discription: 'A modern take on \n tradtion',prices:980 ),
  furnitrue_cardConetnt(id: 14,image_path: 'asset/sofa4.png',titel:'Tirnar Sofa',discription: 'A modern take on \n tradtion',prices: 990 ),
  furnitrue_cardConetnt(id: 11,image_path: 'asset/sofa5.png',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 580),
  furnitrue_cardConetnt(id: 15,image_path: 'asset/sofa6.png',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 2220 ),
  furnitrue_cardConetnt(id: 16,image_path: 'asset/sofa7.png',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 2440 ),

];

List<furnitrue_cardConetnt> card_ofchair=[
  furnitrue_cardConetnt(id: 2,image_path: 'asset/chair1.png',titel:'Amos Chair',discription: 'A modern take on \n tradtion',prices: 220 ),
  furnitrue_cardConetnt(id: 7,image_path: 'asset/chair2.png',titel:'Kew Chair',discription: 'A modern take on \n tradtion',prices: 330 ),
  furnitrue_cardConetnt(id: 17,image_path: 'asset/chair3.png',titel:'Buro Chair',discription: 'A modern take on \n tradtion',prices: 123 ),
  furnitrue_cardConetnt(id:10 ,image_path: 'asset/chair4.png',titel:'Tirnar Chair',discription: 'A modern take on \n tradtion',prices: 400 ),
  furnitrue_cardConetnt(id: 18,image_path: 'asset/chair5.png',titel:'Amos Chair',discription: 'A modern take on \n tradtion',prices: 230 ),
  furnitrue_cardConetnt(id: 19,image_path: 'asset/chair6.png',titel:'Amos Chair',discription: 'A modern take on \n tradtion',prices: 459 ),

];

List<furnitrue_cardConetnt> card_oftable=[
  furnitrue_cardConetnt(id: 3,image_path: 'asset/table.png',titel:'Amos Table',discription: 'A modern take on \n tradtion',prices: 180 ),
  furnitrue_cardConetnt(id: 20,image_path: 'asset/table2.png',titel:'Kew Table',discription: 'A modern take on \n tradtion',prices: 640 ),
  furnitrue_cardConetnt(id: 21,image_path: 'asset/table3.png',titel:'Buro Table',discription: 'A modern take on \n tradtion',prices: 280 ),
  furnitrue_cardConetnt(id: 22,image_path: 'asset/table4.png',titel:'Tirnar Table',discription: 'A modern take on \n tradtion',prices: 330 ),

];

List<furnitrue_cardConetnt> card_ofbed=[
  furnitrue_cardConetnt(id:23 ,image_path: 'asset/bed1.png',titel:'Amos Bed',discription: 'A modern take on \n tradtion',prices: 1480 ),
  furnitrue_cardConetnt(id: 24,image_path: 'asset/bed2.png',titel:'Kew Bed',discription: 'A modern take on \n tradtion',prices: 1680 ),
  furnitrue_cardConetnt(id: 25,image_path: 'asset/bed3.png',titel:'Buro Bed',discription: 'A modern take on \n tradtion',prices:2300 ),
  furnitrue_cardConetnt(id: 9,image_path: 'asset/bed4.png',titel:'Tirnar Bed',discription: 'A modern take on \n tradtion',prices: 1585),
  furnitrue_cardConetnt(id:26 ,image_path: 'asset/bed5.png',titel:'Amos Bed',discription: 'A modern take on \n tradtion',prices: 2464 ),
  furnitrue_cardConetnt(id: 4,image_path: 'asset/bed6.png',titel:'Amos Bed',discription: 'A modern take on \n tradtion',prices: 3450 ),

];

List<String>listof_Itemelikes=['asset/bed3.png','asset/chair5.png','asset/table2.png','asset/sofa5.png','asset/sofa3.png'];

List<furnitrue_cardConetnt> card_ofnewitem=[
  furnitrue_cardConetnt(id:27 ,image_path: 'asset/new_cabent.png.jpeg',titel:'Amos Cabent',discription: 'A modern take on \n tradtion',prices: 480 ),
  furnitrue_cardConetnt(id: 28,image_path: 'asset/new_chair.png.jpeg',titel:'Kew Chair',discription: 'A modern take on \n tradtion',prices: 1680 ),
  furnitrue_cardConetnt(id:29 ,image_path: 'asset/new_sofa.png.jpeg',titel:'Buro Sofa',discription: 'A modern take on \n tradtion',prices: 980 ),
  furnitrue_cardConetnt(id: 30,image_path: 'asset/new_sofa3.png.jpeg',titel:'Tirnar Sofa',discription: 'A modern take on \n tradtion',prices: 990 ),
  furnitrue_cardConetnt(id: 31,image_path: 'asset/new_sofa4.png.jpeg',titel:'Amos Sofa',discription: 'A modern take on \n tradtion',prices: 580 ),
  furnitrue_cardConetnt(id: 32,image_path: 'asset/new_sotrge.png.jpeg',titel:'Amos Storge',discription: 'A modern take on \n tradtion',prices: 2220 ),

];
List <Item_page>cart = <Item_page>[];
List<int> sum=[];

void addCardManager(String path,String title,int price,int amount) {
  final newAddItem = Item_page(price: price,titel: title,amount: amount,image: path,);
  if (cart.length != 0) {
    bool isFound = false;
    for (int itemcount = 0; itemcount < cart.length; itemcount++) {
      if (cart[itemcount].image== newAddItem.image) {

        isFound = true;
 cart[itemcount].amount= cart[itemcount].amount+1;

 //print('sum in listofitem ${sum[itemcount]}');

        break;
      }
    }
    if (!isFound) {
  cart.add(newAddItem);
  newAddItem.amount=1 ;

    }
  } else {
    cart.add(newAddItem);
    newAddItem.amount=1 ;

  }
}
