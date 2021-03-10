import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            title: Text('HomeScreen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Home()));
            },
          )
        ],
      )),
    );
  }
}

