import 'package:flutter/material.dart';
import 'Screens/AddStoreScreen.dart';
import 'Screens/DailyEssentialsCategoryScreen.dart';
import 'Screens/DailyEssentialsPhotoScreen.dart';
import 'Screens/GroceryPhotoScreen.dart';
import 'Screens/GroceryCategoryScreen.dart';
import 'Screens/GroceryProductsScreen.dart';
import 'Screens/SendDailyEssentialsScreen.dart';
import 'Screens/StoreListScreen.dart';



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
      child: Column(children: [
        Container(width: double.infinity,
        padding: EdgeInsets.all(20),
        color: Theme.of(context).primaryColor,
        child: Center(child: Column(children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 30,
            ),
            decoration: BoxDecoration(shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fworldvectorlogo.com%2Flogo%2Fflutter-logo&psig=AOvVaw2soBBmITkrrlgGRYR1fMPA&ust=1615543570522000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMj1uff-p-8CFQAAAAAdAAAAABAR',
            ),
            fit: BoxFit.fill
            ),
            ),
          ),
          Text('OneShopStore',style: TextStyle(fontSize: 26,color: Colors.white
          ),)
        ],),),
        ),
      ListTile(
      leading: Icon(Icons.add_shopping_cart),
      title: Text('Add Store',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: null,
      ),
      ListTile(
      leading: Icon(Icons.local_grocery_store),
      title: Text('Grocery',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: null,
      ),
      ListTile(
      leading: Icon(Icons.ev_station_sharp),
      title: Text('Daily Essentials Photo',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: null,
      ),
      ListTile(
      leading: Icon(Icons.settings),
      title: Text('Grocery category',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: null,
      ),
      ListTile(
      leading: Icon(Icons.directions_railway),
      title: Text('Daily Essentials Category',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: )
        );
      },
      ),
      ListTile(
      leading: Icon(Icons.storage_rounded),
      title: Text('Store List',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: null,
      ),
      ListTile(
      leading: Icon(Icons.local_grocery_store),
      title: Text('Grocery Products',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: null,
      ),
      ListTile(
      leading: Icon(Icons.send_outlined),
      title: Text('Send Daily Essentials',style: TextStyle(fontSize: 18,
      ),
      ),
      onTap: null,
      ),
      
      ],
      ),
      
      ),
    );
  }
}


