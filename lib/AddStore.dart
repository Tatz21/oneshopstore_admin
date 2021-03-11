import 'package:flutter/material.dart';

class AddStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: Text('AddStore'),
          ),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return new StuffInTiles(listOfTiles[index]);
          },
          itemCount: listOfTiles.length,
        ),
      ),
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: () => print("tap"),
          subtitle: new Text("Subtitle"),
          
          selected: true,
          
          title: new Text(t.title));

    return new ExpansionTile(
      key: new PageStorageKey<int>(3),
      title: new Text(t.title),
      children: t.children.map(_buildTiles).toList(),
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),

  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
  new MyTile(
    'Pincode',
    <MyTile>[
      new MyTile(
        'Pincode',
        <MyTile>[
          new MyTile('700129'),
          new MyTile('700899'),
          new MyTile('700564'),
        ],
      ),
    ],
  ),
];