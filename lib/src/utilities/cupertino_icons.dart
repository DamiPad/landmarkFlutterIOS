import 'package:flutter/cupertino.dart';

final _iconos= <String, IconData>{
  'minus': IconData( 0xf2c7,
            fontFamily: CupertinoIcons.iconFont,
            fontPackage: CupertinoIcons.iconFontPackage
          ),
  'plus': IconData( 0xf2c4,
            fontFamily: CupertinoIcons.iconFont,
            fontPackage: CupertinoIcons.iconFontPackage
          ),

  'star': IconData( 0xf3ad,
            fontFamily: CupertinoIcons.iconFont,
            fontPackage: CupertinoIcons.iconFontPackage
          )
};

IconData getCupertinoIconData(String nombreIcono){
  return _iconos[nombreIcono];
}