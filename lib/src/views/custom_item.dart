import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landsmark/src/utilities/cupertino_icons.dart';

class CustomItemList extends StatelessWidget{
  const CustomItemList({Key key, this.icons,this.titulo}) : super(key: key);
  final String titulo;
  final String icons;

 
  //final String imagen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide( 
            color: Color.fromARGB(200, 128, 128, 128),
            width: 1.0,
          ),
        ),
      ),
      
      child: ListTile(
        leading: Image.asset(icons),
        title: Text(titulo),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(getCupertinoIconData('star'),color: CupertinoColors.systemYellow,),
            Icon(CupertinoIcons.right_chevron),
          ],
        ),
       
      ),
    );
  }

}