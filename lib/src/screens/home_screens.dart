import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landsmark/src/views/custom_item.dart';


class HomeScreen extends StatelessWidget {
 
  //const HomeScreen({Key key}) : super(key: key);

  final listaPersonas = ['Turtle Rock',
                          'Silver Salmon Creek', 
                          'Chilkoot Trail',
                          'St. Mary Lake',
                          'Twin Lake',
                          'Lake MacDonald',
                          'Charley Rivers',
                          'Icy Bay',
                          'Rainbow Lake',
                          'Hidden Lake',
                          'Chincoteague'];

  final listaImagenes = ['assets/turtlerock.jpg',
                          'assets/silversalmoncreek.jpg', 
                          'assets/chilkoottrail.jpg',
                          'assets/stmarylake.jpg',
                          'assets/twinlake.jpg',
                          'assets/lakemcdonald.jpg',
                          'assets/charleyrivers.jpg',
                          'assets/icybay.jpg',
                          'assets/rainbowlake.jpg',
                          'assets/hiddenlake.jpg',
                          'assets/chincoteague.jpg'];
  @override
  Widget build(BuildContext context) {
    return Material(
          child: CupertinoPageScaffold(
            child: CustomScrollView(
              slivers: <Widget>[
                CupertinoSliverNavigationBar(
                  largeTitle: Text('Landmarks')
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                  (context,index){  
                    
                    return CustomItemList(
                      icons: listaImagenes[index],
                      titulo: listaPersonas[index]
                    );

                  },
                    childCount: listaPersonas.length, 
                  ),
                )
              ],
            ),
        
      ),
    );
    

  }

}