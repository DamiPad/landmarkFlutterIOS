
import 'package:flutter/cupertino.dart';
import 'package:landsmark/src/screens/home_screens.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return CupertinoApp(
     home: HomeScreen(),
   );
  }

}