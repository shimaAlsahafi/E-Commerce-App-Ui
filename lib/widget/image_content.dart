import 'package:flutter/material.dart';
class Image_content extends StatelessWidget {
  final String titel;
  final String body;
  final String image_path;
 final  height;
 final List<EdgeInsets> padding;
 final  List<Color> color;
 final List<TextStyle> textStyle;
final Function function;
  const Image_content({Key key, this.titel, this.body,this.image_path,this.height,this.padding,this.color,this.textStyle,this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [

        Container(margin: EdgeInsets.only(top: 20),height:height,width:  MediaQuery.of(context).size.width,decoration: BoxDecoration(color: Colors.black87 ,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            image: DecorationImage(image: AssetImage(image_path,),fit: BoxFit.cover)
        ),child:  Padding(
          padding:padding[0],
          child: Text(titel,textScaleFactor: 1.0,style:textStyle[0],textAlign: TextAlign.left,)
        ),) ,

        Padding(
          padding:padding[1] ,
          child: Text(body,maxLines: 2,style:textStyle[1],textAlign: TextAlign.left,),
        ),
        Padding(padding:padding[2],child: IconButton(icon: Icon(Icons.arrow_forward,color: color[2],size: 30,),onPressed:function ,),)
      ],
    );
  }
}
