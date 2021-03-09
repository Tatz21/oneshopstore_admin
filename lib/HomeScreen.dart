import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  Material MyItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor:  Color(0x802196F3),
      borderRadius:  BorderRadius.circular(24.0),
      child:Center(
      child: Padding(
        padding:const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
             mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
                Padding(
                  padding:const EdgeInsets.all(8.0),
                  child:Text(heading,
                  style: TextStyle(
                    color: new Color(color),
                    fontSize: 14.0,
                  ),
                  ),
                  ),


                Material(
                 color: new Color(color),
                 borderRadius: BorderRadius.circular(24.0),
                 child: Padding(
                   padding:const EdgeInsets.all(16.0),
                   child: Icon(
                     icon,
                     color:Colors.white,
                     size: 30.0,
                   ),
                 ),
                ),
                
              ],
            )
          ],
        ),
        

        )
      ) ,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Homepage',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 9.0),
        children: <Widget>[
          MyItems(Icons.add_shopping_cart, "AddStore", 0xffed622b),
          MyItems(Icons.local_grocery_store, "Grocery Photo", 0xffed622b),
          MyItems(Icons.expand_less_outlined,"Daily Essentials Photo", 0xffed622b),
          MyItems(Icons.settings, "Grocery Category", 0xffed622b),
          MyItems(Icons.directions_railway,"Daily Essentials Category", 0xffed622b),
          MyItems(Icons.storage_rounded,"Store List", 0xffed622b),
          MyItems(Icons.local_grocery_store, "Grocery Products", 0xffed622b),
          MyItems(Icons.send_outlined,"Send Daily Essentials", 0xffed622b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1,140.0),
          StaggeredTile.extent(1, 160.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(2, 180.0),
          StaggeredTile.extent(1, 160.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(1, 140.0),
        ],
      ),
    );
  }
}
